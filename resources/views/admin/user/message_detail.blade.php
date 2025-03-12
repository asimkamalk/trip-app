@extends('admin.layout.master')
@section('main_content')
@include('admin.layout.nav')
@include('admin.layout.sidebar')
<div class="main-content">
    <section class="section">
        <div class="section-header justify-content-between">
            <h1>Messages from </h1>
            <div class="ml-auto">
                <a href="{{ route('admin_message') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Back to Previous</a>
            </div>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">

                            @foreach($message_comments as $item)
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
                                        <h4>{{ $sender_data->name }}</h4>
                                        <h5>{{ $item->type }}</h5>
                                        <div class="date-time">{{ $item->created_at->format('Y-m-d H:i A') }}</div>
                                    </div>
                                </div>
                                <div class="message-bottom">
                                    <p>
                                        {!! $item->comment !!}
                                    </p>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>

                </div>

                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('admin_message_submit',$id) }}" method="post">
                                @csrf
                                <div class="mb-2">
                                    <textarea name="comment" class="form-control h_200" cols="30" rows="10" placeholder="Write your message here"></textarea>
                                </div>
                                <div class="mb-2">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection