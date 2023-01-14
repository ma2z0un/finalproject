<?php

namespace App\Http\Controllers\Admin;

use Exception;
use Illuminate\Support\Arr;

use Illuminate\Support\Str;
use App\Models\MainCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use App\Http\Requests\MainCategoryFormRequest;

class MainCategoriesController extends Controller
{
    public function index()
    {
        $default_lang = get_default_lang();
        $categories = MainCategory::where('translation_lang', $default_lang)->Selection()->get();
        return view('admin.maincategories.index', compact('categories'));
    }
    public function create()
    {
        return view('admin.maincategories.create');
    }

    public function store(MainCategoryFormRequest $request)
    {




        try {




            $main_category = collect($request->category);





            $mainfilter = $main_category->filter(function ($value, $key) {
                return $value['translation_lang'] == get_default_lang();
            });

            // return  array_values($mainfilter);
            $default_category = array_values($mainfilter->toArray())[0];


            // return Arr::has( $default_category,'active');
            if (Arr::has($default_category, 'active') != 1) {
                $default_category['active'] = 0;
            }
            
            $filePath = '';
            if ($request->has('photo')) {
                $filePath = uploadImage('maincategories', $request->photo);
            }


            DB::beginTransaction();
            // return $default_category;
            $default_category_id = MainCategory::insertGetId([
                'translation_lang' => $default_category['translation_lang'],
                'translation_of' => 0,
                'name' => $default_category['name'],
                'slug' => $default_category['name'],
                'photo' => $filePath,
                'active' => $default_category['active'],
            ]);
            // return $default_category_id;
            $categories = $main_category->filter(function ($value, $key) {
                return $value['translation_lang'] != get_default_lang();
            });
            if (isset($categories) && $categories->count() > 0) {
                $categories_arr = [];
                foreach ($categories as $category) {
                    if (array_key_exists('active', $category)) {
                        $category['active'] = 1;
                    } else {
                        $category['active'] = 0;
                    }
                    $categories_arr[] = [
                        'translation_lang' => $category['translation_lang'],
                        'translation_of' => $default_category_id,
                        'name' => $category['name'],
                        'slug' => $category['name'],
                        'photo' => $filePath,
                        'active' => $category['active'],


                    ];
                    // return  $categories_arr;
                    //     if (Arr::has( $category,'active')!=1) {
                    //         $categories_arr['active']=0;
                    //    }
                    //    else{
                    //     $categories_arr['active']=1;
                    //    }


                }
                MainCategory::insert($categories_arr);
            }
            DB::commit();
            return redirect()->route('admin.maincategories')->with(['success' => 'تم الحفظ بنجاح']);
        } catch (\Exception $ex) {
            DB::rollBack();
            return redirect()->route('admin.maincategories')->with(['error' => $ex->getMessage()]);
        }
        // return array_values($mainfilter->all());
    }


    public function edit($id)
    {
        $maincategory = MainCategory::with('categories')->selection()->find($id);

        // return $maincategory->categories->count();


        if (!$maincategory) {
            return redirect()->route('admin.maincategories')->with(['error' => 'هذا القسم غير موجود']);
        }
        // $maincategoryparent="";
        // if($maincategory->categories->count()==0   ){

        //     $maincategoryparent= MainCategory::with(['categories'=>function($q) use($maincategory)
        //     {
        //         $q->wherenot('id',$maincategory->id);

        //     }])
        //     ->selection()
        //     ->where('id',$maincategory->translation_of)

        //     ->get();

        // }
        return view('admin.maincategories.edit', compact('maincategory'));
    }
    // public function store(MainCategoryFormRequest $request){
    //     return $request;
    // }
    public function update($id, MainCategoryFormRequest $request)
    {


        // return $request ;
        try {
            $maincategory = MainCategory::find($id);
            if (!$maincategory) {
                return redirect()->route('admin.maincategories')->with(['error' => 'هذا القسم غير موجود']);
            }
            $category = array_values($request->category)[0];

            if (!$request->has('category.0.active')) {
                // $request->request->add(['active'=>0]);
                $request->request->add(['category' => [array_merge($request->category[0], ['active' => "0"])]]);
                // $request->request->add(['category'=>array_merge($request->category,['active'=>"0"])]);

            }
            $photo =  $maincategory->photo;
            $photosub = substr($photo, strpos($photo, 'asset'), strlen($photo));

            // save image
            $filePath = "";
            if ($request->has('photo')) {
                // return $maincategory->photo;
                if (file_exists($photosub)) {
                    File::delete($photosub);
                }

                $filePath = uploadImage('maincategories', $request->photo);
                $maincategory->update([
                    'photo' => $filePath,

                ]);
            }

            $maincategory->update([
                'name' => $category['name'],
                'active' => $request->category[0]['active'],

            ]);
            return redirect()->route('admin.maincategories')->with(['success' => 'تم التحديث بنجاح']);
        } catch (Exception $e) {
            return redirect()->route('admin.maincategories')->with(['error' => $e->getMessage()]);
            // return redirect()->route('admin.maincategories')->with(['error'=>'حدث عملية خطأ في الحفظ']);
        }
    }

   
    public function destroy($id){
        try{
            $maincategory=MainCategory::find($id);
            // return $maincategory;
            if(!$maincategory){
                return redirect()->route('admin.maincategories')->with(['error'=>'هذه القسم غير موجودة']);
            }
            $vendors=$maincategory->vendors();
            if(isset($vendors) && $vendors->count()>0 ){
                return redirect()->route('admin.maincategories')->with('error','لا يمكن حذف هذا القسم');
            }
            $image= Str::after($maincategory->photo,'assets/');
            $image= base_path('assets/'.$image);
            unlink($image);

            // delete translation record
            $maincategory->categories()->delete();
            // return ('ss');
            $maincategory->delete();
            return redirect()->route('admin.maincategories')->with('success','تم حذف القسم بنجاح');

        }
    catch (\Exception $th) {
        return redirect()->route('admin.maincategories')->with('error','حدث خطأ في الحذف');
        }
    }
    public function changeStatus($id){
        try {
            $maincategory=MainCategory::find($id);
            // return $maincategory;
            if(!$maincategory){
                return redirect()->route('admin.maincategories')->with(['error'=>'هذه القسم غير موجودة']);
            }
            $status=$maincategory->active==0 ? 1 : 0;
            $maincategory->update([
                'active'=>$status,
            ]);
            return redirect()->route('admin.maincategories')->with('success','تم تغيير الحالة بنجاح');
        } catch (\Throwable $th) {
            return redirect()->route('admin.maincategories')->with('error','حدث خطأ نرجو المحاولة في لقط لاحق ');
        }
    }
}
