@extends('front.layout.master')

@section('main_content')
@php
$setting = App\Models\Setting::where('id',1)->first();
@endphp
<div class="page-top" style="background-image: url({{ asset('uploads/'.$setting->banner) }})">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Messages</h2>
                <div class="breadcrumb-container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Messages</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-content user-panel pt_70 pb_70">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-12">
                <div class="card">
                    @include('user.sidebar')
                </div>
            </div>
            
            @if($message_check > 0)
            <div class="col-lg-5 col-md-12">
                <h3>All Messages</h3>

                @forelse($message_comments as $item)
                @php
                if($item->type == 'User'){
                    $sender_data = App\Models\User::where('id', $item->sender_id)->first();
                } else {
                    $sender_data = App\Models\Admin::where('id', $item->sender_id)->first();
                }
                @endphp
                <div class="message-item @if($item->type == 'Admin') message-item-admin-border @endif">
                    <div class="message-top">
                        <div class="left">
                            @if($sender_data->photo != '')
                            <img src="{{ asset('uploads/'.$sender_data->photo) }}" alt="">
                            @else
                            <img src="{{ asset('uploads/default.png') }}" alt="">
                            @endif
                        </div>
                        <div class="right">
                            <h4>{{ $sender_data->name }} @if($item->type == 'Admin') (Admin) @endif</h4>
                            <div class="date-time">{{ $item->created_at->format('Y-m-d H:i A') }}</div>
                        </div>
                    </div>
                    <div class="message-bottom">
                        <p>
                            {!! $item->comment !!}
                        </p>
                    </div>
                </div>

                @empty
                <div class="alert alert-danger">
                    No message found
                </div>
                @endforelse


            </div>

            <div class="col-lg-4 col-md-12">
                <h3>Write a message</h3>
                <form action="{{ route('user_message_submit') }}" method="post">
                    @csrf
                    <div class="mb-2">
                        <textarea name="comment" class="form-control h-150" cols="30" rows="10" placeholder="Write your message here"></textarea>
                    </div>
                    <div class="mb-2">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>

            @else

            <div class="col-lg-9 col-md-12">
                <div class="alert alert-danger">
                    No message found<br>
                    <a href="{{ route('user_message_start') }}" class="text-decoration-underline">Please click here to start messaging</a>
                </div>
            </div>
            @endif
        </div>
    </div>
</div>
@endsection