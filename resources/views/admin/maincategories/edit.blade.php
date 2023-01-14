@extends('layouts.admin')
@section('content')
    <div class="app-content content">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="">الرئيسية </a>
                                </li>
                                <li class="breadcrumb-item"><a href=""> الاقسام الرئيسية </a>
                                </li>
                                <li class="breadcrumb-item active">تعديل قسم {{ $maincategory->name }}
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">
                <!-- Basic form layout section start -->
                <section id="basic-form-layouts">
                    <div class="row match-height">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title" id="basic-layout-form"> تعديل قسم رئيسي </h4>
                                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                                    <div class="heading-elements">
                                        <ul class="list-inline mb-0">
                                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                @include('admin.includes.alerts.success')
                                @include('admin.includes.alerts.errors')
                                <div class="card-content collapse show">
                                    <div class="card-body">

                                        {{-- @isset($maincategoryparent)
                                      
                                        @if (Str::length($maincategoryparent)>0)
                                       
                                        @endif --}}
                                           
                                        {{-- @endisset --}}
                                        <form class="form"
                                            action="{{ route('admin.maincategories.update', $maincategory->id) }}"
                                            method="POST" enctype="multipart/form-data">
                                            @csrf
                                            <input type="hidden" name="id" value="{{ $maincategory->id }}">
                                            <div class="form-group">
                                                <div class="text-center">
                                                    <img src="{{ $maincategory->photo }}" alt="صورة القسم"
                                                        class="rounded-circle height-150">
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <label> صوره القسم </label>
                                                <label class="file center-block">
                                                    <input type="file" id="file" name="photo">
                                                    <span class="file-custom"></span>
                                                </label>
                                                @error('photo')
                                                    <span class="text-danger"> {{ $message }}</span>
                                                @enderror

                                            </div>

                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> بيانات القسم </h4>



                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="name">اسم القسم -
                                                                {{ __('messages.' . $maincategory->translation_lang) }}
                                                            </label>
                                                            <input type="text" value="{{ $maincategory->name }}"
                                                                id="name" class="form-control" placeholder=""
                                                                name="category[0][name]">
                                                            @error('category.0.name')
                                                                <span class="text-danger">{{ $message }}</span>
                                                            @enderror

                                                        </div>
                                                    </div>


                                                    <div class="col-md-6 hidden">
                                                        <div class="form-group">
                                                            <label for="translation_lang">اختصار اللغة -
                                                                {{ __('messages.' . $maincategory->translation_lang) }}
                                                            </label>
                                                            <input type="text" id="translation_lang" class="form-control"
                                                                placeholder=" " name="category[0][translation_lang]"
                                                                value="{{ $maincategory->translation_lang }}">
                                                            @error('category.0.translation_lang')
                                                                <span class="text-danger"> {{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>



                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox" value="1" name="category[0][active]"
                                                                id="switcheryColor4" class="switchery" data-color="success"
                                                                @if ($maincategory->active == 1) checked @endif />
                                                            <label for="switcheryColor4" class="card-title ml-1">الحالة -
                                                                {{ __('messages.' . $maincategory->translation_lang) }}
                                                            </label>

                                                            @error('category.0.active')
                                                                <span class="text-danger"> {{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>



                                                </div>

                                            </div>











                                            <div class="form-actions">
                                                <button type="button" class="btn btn-warning mr-1"
                                                    onclick="history.back();">
                                                    <i class="ft-x"></i> تراجع
                                                </button>
                                                <button type="submit" class="btn btn-primary">
                                                    <i class="la la-check-square-o"></i> تحديث
                                                </button>
                                            </div>
                                        </form>

                                        <ul class="nav nav-tabs">
                                            @isset($maincategory->categories)
                                                @foreach ($maincategory->categories as $key => $translation)
                                                    <li class="nav-item">
                                                        <a class="nav-link {{ $key == 0 ? 'active' : '' }}" id="homeLable1-tab1"
                                                            data-toggle="tab" href="#homeLable{{ $key }}"
                                                            aria-controls="homeLable1" aria-expanded="true">
                                                            {{ $translation->translation_lang }}</a>
                                                    </li>
                                                @endforeach
                                            @endisset




                                        </ul>
                                        <div class="tab-content px-1 pt-1">
                                            @isset($maincategory->categories)
                                                @foreach ($maincategory->categories as $key => $translation)
                                                    <div role="tabpanel active"
                                                        class="tab-pane {{ $key == 0 ? 'active' : '' }}"
                                                        id="homeLable{{ $key }}" aria-labelledby="homeLable1-tab1"
                                                        aria-expanded="true">
                                                        <form class="form"
                                                            action="{{ route('admin.maincategories.update', $translation->id) }}"
                                                            method="POST" enctype="multipart/form-data">
                                                            @csrf
                                                            <input type="hidden" name="id"
                                                                value="{{ $translation->id }}">



                                                            <div class="form-body">
                                                                <h4 class="form-section"><i class="ft-home"></i> بيانات القسم
                                                                </h4>



                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label for="name">اسم القسم -
                                                                                {{ __('messages.' . $translation->translation_lang) }}
                                                                            </label>
                                                                            <input type="text"
                                                                                value="{{ $translation->name }}"
                                                                                id="name" class="form-control"
                                                                                placeholder="" name="category[0][name]">
                                                                            @error('category.0.name')
                                                                                <span
                                                                                    class="text-danger">{{ $message }}</span>
                                                                            @enderror

                                                                        </div>
                                                                    </div>


                                                                    <div class="col-md-6 hidden">
                                                                        <div class="form-group">
                                                                            <label for="translation_lang">اختصار اللغة -
                                                                                {{ __('messages.' . $translation->translation_lang) }}
                                                                            </label>
                                                                            <input type="text" id="translation_lang"
                                                                                class="form-control" placeholder=" "
                                                                                name="category[0][translation_lang]"
                                                                                value="{{ $translation->translation_lang }}">
                                                                            @error('category.0.translation_lang')
                                                                                <span class="text-danger">
                                                                                    {{ $message }}</span>
                                                                            @enderror
                                                                        </div>
                                                                    </div>



                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group mt-1">
                                                                            <input type="checkbox" value="1"
                                                                                name="category[0][active]"
                                                                                id="switcheryColor4" class="switchery"
                                                                                data-color="success"
                                                                                @if ($translation->active == 1) checked @endif />
                                                                            <label for="switcheryColor4"
                                                                                class="card-title ml-1">الحالة -
                                                                                {{ __('messages.' . $translation->translation_lang) }}
                                                                            </label>

                                                                            @error('category.0.active')
                                                                                <span class="text-danger">
                                                                                    {{ $message }}</span>
                                                                            @enderror
                                                                        </div>
                                                                    </div>



                                                                </div>

                                                            </div>











                                                            <div class="form-actions">
                                                                <button type="button" class="btn btn-warning mr-1"
                                                                    onclick="history.back();">
                                                                    <i class="ft-x"></i> تراجع
                                                                </button>
                                                                <button type="submit" class="btn btn-primary">
                                                                    <i class="la la-check-square-o"></i> تحديث
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                @endforeach
                                            @endisset
                                            {{-- <div class="tab-pane active" id="profileLable1" role="tabpanel" aria-labelledby="profileLable1-tab1"
                                            aria-expanded="false">
                                              <p>Pudding candy canes sugar plum cookie chocolate cake powder
                                                croissant. Carrot cake tiramisu danish candy cake muffin
                                                croissant tart dessert. Tiramisu caramels candy canes chocolate
                                                cake sweet roll liquorice icing cupcake.</p>
                                            </div> --}}


                                            {{-- <div class="tab-pane" id="aboutLable1" role="tabpanel" aria-labelledby="aboutLable1-tab1"
                                            aria-expanded="false">
                                              <p>Carrot cake dragée chocolate. Lemon drops ice cream wafer
                                                gummies dragée. Chocolate bar liquorice cheesecake cookie
                                                chupa chups marshmallow oat cake biscuit. Dessert toffee
                                                fruitcake ice cream powder tootsie roll cake.</p>
                                            </div> --}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Basic form layout section end -->
            </div>
        </div>
    </div>
@endsection
