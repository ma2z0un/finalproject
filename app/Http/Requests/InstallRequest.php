<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class InstallRequest extends FormRequest
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
            "domain"=>'required|max:50',
            "dbservername"=>'required|max:50',
            "dbserverport"=>'required|max:50',
            "dbname"=>'required|max:50',
            "username"=>'required|max:50',
            "password"=>'nullable|max:50',
        ];
    }
}
