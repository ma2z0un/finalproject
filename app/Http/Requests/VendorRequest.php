<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VendorRequest extends FormRequest
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
            'logo'=>'required_without:id|mimes:png,jpg,jpeg',
            'name'=>'required|string|max:150',
            'mobile'=>'required|max:100|unique:vendors,mobile,'.$this->id,
            'email'=>'required|email|unique:vendors,email,'.$this->id,
            // 'email'=>'sometimes|nullable|email',
            'category_id'=>'required|exists:main_categories,id',
            'address'=>'required|string|max:500',
            'password'=>'nullable|string|min:6'
        ];
    }

    public function messages()
    {
        return [
        
            'required'=>'هذا الحقل مطلوب',
            'max'=>'هذا الحقل يجب أن يكون أصغر',
            'category_id.exists'=>'هذا القسم غير موجود',
            'email.email'=>'صيغة البريد الاكتروني غير صحيحة',
            'address.string'=>'يجب أن يحتوي العنوان على حروف',
            'name.string'=>'يجب أن يحتوي الاسم على حروف',
            'required_without'=>'يجب إختيار الوغو',
            'email.unique'=>'قد تم اضافة البريد الالكتروني مسبقا',
            'mobile.unique'=>'قد تم اضافة رقم الهاتف مسبقا',
            // 'category.*.translation_lang'=>'Enter translation lang',
            // 'category.*.name'=>'Enter Name',
        ];
    }
}
