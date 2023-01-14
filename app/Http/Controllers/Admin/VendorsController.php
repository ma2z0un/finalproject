<?php

namespace App\Http\Controllers\Admin;

use App\Models\Vendor;
use Illuminate\Support\Str;
use App\Models\MainCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Http\Requests\VendorRequest;
use App\Notifications\VendorCreated;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Notification;


class VendorsController extends Controller
{
     public function index()
     {
          $vendors = Vendor::selectection()->paginate(PAGINATION_COUNT);
          return view('admin.vendors.index', compact('vendors'));
     }
     public function create()
     {
          $categories =  MainCategory::where('translation_of', 0)->active()->get();
          return view('admin.vendors.create', compact('categories'));
     }
     public function store(VendorRequest $request)
     {
          // return $request->all();
          try {

               if (!$request->has('active'))
                    $request->request->add(['active' => 0]);


               $filePath = '';
               if ($request->has('logo')) {
                    $filePath = uploadImage('vendors', $request->logo);
               }
               //   return $request->all();
               //code...
               $vendor = Vendor::create([
                    'name' => $request->name,
                    'category_id' => $request->category_id,
                    'mobile' => $request->mobile,
                    'email' => $request->email,
                    'active' => $request->active,
                    'address' => $request->address,
                    'address' => $request->address,
                    'logo' => $filePath,
                    'password' => $request->password,
               ]);
               Notification::send($vendor, new VendorCreated($vendor));
               return redirect()->route('admin.vendors')->with(['success' => 'تم الحفظ بنجاح']);
          } catch (\Exception $ex) {
               return redirect()->route('admin.vendors')->with(['error' => $ex->getMessage()]);
          }
     }
     public function edit($id)
     {
          try {
               $vendor = Vendor::selectection()->find($id);
               $categories =  MainCategory::where('translation_of', 0)->active()->get();
               if (!$vendor) {
                    return redirect()->route('admin.vendors')->with(['error' => 'هذا المتجر غير موجود']);
               }
               return view('admin.vendors.edit', compact('vendor', 'categories'));
          } catch (\Exception $ex) {
               return redirect()->route('admin.vendors')->with(['error' => $ex->getMessage()]);
          }
     }
     public function update($id, VendorRequest $request)
     {
        
          try {
               $vendor = Vendor::selectection()->find($id);
          if (!$vendor) {
               return redirect()->route('admin.vendors')->with(['error' => 'هذا المتجر غير موجود']);
          }
          DB::beginTransaction();
          $logo =  $vendor->photo;
          $logosub = substr($logo, strpos($logo, 'asset'), strlen($logo));

          // update logo
          $filePath = "";
          if ($request->has('logo')) {
               // return $maincategory->photo;
               if (file_exists($logosub)) {
                    File::delete($logosub);
               }

               $filePath = uploadImage('vendors', $request->logo);
               $vendor->update([
                    'logo' => $filePath,

               ]);
          }
          $data=$request->except('_token','id','logo','password');
          
          if ($request->has('password') && $request->password!=null) {
               $data['password']=$request->password;
          }
          // return $data;
        
          $vendor->update($data);
          DB::commit();
          return redirect()->route('admin.vendors')->with(['success' => 'تم التعديل بنجاح']);
          } catch (\Exception $ex) {
               DB::rollBack();
               return redirect()->route('admin.vendors')->with(['error' => $ex->getMessage()]);
          }
     }

     public function destroy($id){
          try{
              $vendor=Vendor::find($id);
              // return $maincategory;
              if(!$vendor){
                  return redirect()->route('admin.vendors')->with(['error'=>'هذه المتجر غير موجودة']);
              }
             
              $image= Str::after($vendor->logo,'assets/');
              $image= base_path('assets/'.$image);
              if(file::exists( $image))
              {
               unlink($image);
              }
              
             
  
              $vendor->delete();
              return redirect()->route('admin.vendors')->with('success','تم حذف المتجر بنجاح');
  
          }
      catch (\Exception $th) {
          return redirect()->route('admin.vendors')->with('error','حدث خطأ في الحذف');
          }
      }
      public function changeStatus($id){
          try {
              $vendors=Vendor::find($id);
              // return $maincategory;
              if(!$vendors){
                  return redirect()->route('admin.vendors')->with(['error'=>'هذا المتجر غير موجودة']);
              }
              $status=$vendors->active==0 ? 1 : 0;
              $vendors->update([
                  'active'=>$status,
              ]);
              return redirect()->route('admin.vendors')->with('success','تم تغيير الحالة بنجاح');
          } catch (\Throwable $th) {
              return redirect()->route('admin.vendors')->with('error','حدث خطأ نرجو المحاولة في لقط لاحق ');
          }
      }
}
