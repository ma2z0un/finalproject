<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LanguageFormRequest extends FormRequest
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
            'name'=>'required|string|max:100',
            'abbr'=>'required|string|max:10',
            'direction'=>'required|in:rtl,ltr',
            // 'active'=>'required|in:0,1',
        ];
    }
    public function messages(){
        return [
            'required'=>'هذا الحقل مطلوب',
            'in'=>'القيم المدخرة غير صحيحة',
            'name.string'=>'اسم اللغة لا بد ان يكون احرف',
            'name.max'=>'اسم اللغة لا بد الا يزيد عن 100 حرف',
            'abbr.string'=>'هذا الحقل لا بد ان يكون احرف',
            'abbr.max'=>' هذا الحقل لا بد الا يزيد عن 10 احرف ',
             
        ];
    }
}
