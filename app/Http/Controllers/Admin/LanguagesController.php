<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\LanguageFormRequest;
use App\Models\Language;


class LanguagesController extends Controller
{

   
    public function index(){
        $languages=Language::Selection()->paginate(PAGINATION_COUNT);
        return view('admin.languages.index',compact('languages'));
    }
    public function create(){
      
        return view('admin.languages.create');
    }
    public function store(LanguageFormRequest $request){
        try {
            if(!$request->has('active'))
            $request->request->add(['active'=>0]);
          Language::create($request->except('_token'));
          return redirect()->route('admin.languages')->with('success','تمت اضافة اللغة بنجاح');
        } catch (\Exception $th) {
            return redirect()->route('admin.languages')->with('error','حدث خطأ في الاضافة');
        }
        
    }
    public function edit( $id){
        $language=Language::select()->find($id);
        
        if(!$language){
            return redirect()->route('admin.languages')->with(['error'=>'هذه اللغة غير موجودة']);
        }
        return view('admin.languages.edit',compact('language'));
    }
    public function update($id,LanguageFormRequest $request){
        try{
            $language=Language::Selection()->find($id);
            if(!$language){
                return redirect()->route('admin.languages.edit',$id)->with(['error'=>'هذه اللغة غير موجودة']);
            }
          
            if(!$request->has('active'))
            $request->request->add(['active'=>0]);
            // dd($request);
            $language->update($request->except('_token'));
            return redirect()->route('admin.languages')->with('success','تمت تحديث اللغة بنجاح');

        }
    catch (\Exception $th) {
        return redirect()->route('admin.languages.edit',$id)->with('error','حدث خطأ في التعديل');
        }
       
    }

    public function destroy($id){
        try{
            $language=Language::select()->find($id);
            if(!$language){
                return redirect()->route('admin.languages')->with(['error'=>'هذه اللغة غير موجودة']);
            }
            $language->delete();
            return redirect()->route('admin.languages')->with('success','تمت حذف اللغة بنجاح');

        }
    catch (\Exception $th) {
        return redirect()->route('admin.languages')->with('error','حدث خطأ في الحذف');
        }
    }
}
