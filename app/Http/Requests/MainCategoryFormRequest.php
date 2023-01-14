<?php

namespace App\Http\Requests;


use Illuminate\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;

class MainCategoryFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'photo'=>'required_without:id|mimes:png,jpg,jpeg',
            'category'=>'required|array|min:1',
            'category.*.name'=>'required',
            'category.*.translation_lang'=>'required',
            // 'category.*.active'=>'required',
            // 'abbr'=>'required|string|max:10',
        ];
    }
    public function messages()
    {
        return [
            'photo.required'=>'اختيار الصورة',
            'category.*.*.required'=>'هذا الحقل مطلوب',
            // 'category.*.translation_lang'=>'Enter translation lang',
            // 'category.*.name'=>'Enter Name',
        ];
    }


}
