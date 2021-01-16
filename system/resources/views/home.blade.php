@extends('user.template.baseUser')

@section('content')

<div class="card">
          <div class="card-header">
          	<div class="container d-flex align-items-center">
            Filter
          </div>
          <div class="card-body">
            <form action="{{('home/filter')}}" method="post">
              @csrf
              <div class="form-group">
                <label for="" class="control-label">Nama</label>
                <input type="text" class="form-control" name="nama" value="{{$nama ?? ""}}">
              </div>
              <div class="form-group">
                <label for="" class="control-label">Stok</label>
                <input type="text" class="form-control" name="stok" value="{{$stok ?? ""}}">
              </div>

              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="" class="control-label">Harga Min</label>
                    <input type="text" class="form-control" name="harga_min" value="{{$harga_min ?? ""}}">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="" class="control-label">Harga Max</label>
                    <input type="text" class="form-control" name="harga_max" value="{{$harga_max ?? ""}}">
                  </div>
                </div>
              </div>
              <button class="btn btn-dark float-right"> <i class="fa fa-search"></i> Filter</button>
            </form>
          </div>
        </div>
    </div>

         
			<div class="row">
    					@foreach($list_produk as $data)

    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="{{url('produk_single', $data->id)}}" class="img-prod"><img class="img-fluid" src="{{asset('public')}}/images/category_1.jpg" class="img-fluid" alt="Colorlib Template"></a>
    						
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3>{{$data->nama_produk}}</h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price">
		    							<span class="price-sale">Rp. {{number_format($data->harga)}}</span>
		    							| Stok : {{$data->stok}} <br>
		    							Berat : {{$data->berat}}
		    						</p>
		    					</div>
	    					</div>
	    					<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
	    								<span><i class="ion-ios-menu"></i></span>
	    							</a>
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							<a href="#" class="heart d-flex justify-content-center align-items-center ">
	    								<span><i class="ion-ios-heart"></i></span>
	    							</a>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    					@endforeach
              <div class ="row">
                                <div class="col-md-12">
                                    <div class="d-flex justify-content-center">
                                    {!! $list_produk->links() !!}
                                    </div>
                                </div>
                            </div>
    		</div>

@endsection