@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    Dashboard | Meals 
                    <button class="btn btn-primary btn-sm align-self-end" data-toggle="modal" data-target="#addNewMeal">Add New</button>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <div class="form-group col-md-5">
                        <select name="filterBy" id="filterBy" class="form-control">
                            <option value="All" <?php echo (!$filterBy) ? 'selected' : ''; ?>>All</option>
                            <option value="Breakfast" <?php echo ($filterBy == 'Breakfast') ? 'selected' : ''; ?>>Breakfast</option>
                            <option value="Mid-Morning Snack" <?php echo ($filterBy == 'Mid-Morning Snack') ? 'selected' : ''; ?>>Mid-Morning Snack</option>
                            <option value="Lunch" <?php echo ($filterBy == 'Lunch') ? 'selected' : ''; ?>>Lunch</option>
                            <option value="Mid-Afternoon Snack" <?php echo ($filterBy == 'Mid-Afternoon Snack') ? 'selected' : ''; ?>>Mid-Afternoon Snack</option>
                            <option value="Dinner" <?php echo ($filterBy == 'Dinner') ? 'selected' : ''; ?>>Dinner</option>
                        </select>
                    </div>
                    <div class="card-columns">
                        @foreach($meals as $meal)
                        <div class="card card-meal" style="width: 18rem;">
                            <span class="badge badge-pill badge-primary notify-badge">{{ $meal->type }}</span>
                            <img class="card-img-top" src="{{ url('/' . $meal->img) }}" alt="Card image cap" data-toggle="tooltip" data-placement="top" >
                            <div class="card-body">
                            <h5 class="card-title">{{ $meal->title }}</h5>
                            <p class="card-text">{{ substr(strip_tags($meal->preparation), 0, 120) }}...</p>
                                <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary editMeal" value="{{ $meal->id }}">
                                Edit
                                </button>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal | Add New Meal -->
<div class="modal fade" id="addNewMeal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <form action="{{route('meals.store')}}" method="post" enctype="multipart/form-data">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Meal</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                    @csrf
                    <div class="form-group">
                        <label for="mealTitle">Title</label>
                        <input type="text" class="form-control" id="mealTitle" name="title" aria-describedby="emailHelp" placeholder="Enter the Title of the Meal">
                    </div>
                    <div class="form-group">
                        <select class="form-control" name="type">
                            <option>Breakfast</option>
                            <option>Mid-Morning Snack</option>
                            <option>Lunch</option>
                            <option>Mid-Afternoon Snack</option>
                            <option>Dinner</option>
                            <option disabled> </option>
                            <option>Bulk Meal</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" id="mealDescription" name="preparation" rows="6" placeholder="Meal Preparation description..."></textarea>
                    </div>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">Calories, Fat and Saturated Fat</span>
                        </div>
                        <input type="text" class="form-control" name="Calories" placeholder="Calories">
                        <input type="text" class="form-control" name="Fat" placeholder="Fat">
                        <input type="text" class="form-control" name="Saturated Fat" placeholder="Saturated Fat">
                    </div>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">Cholesterol, Sodium and Carbs</span>
                        </div>
                        <input type="text" class="form-control" name="Cholesterol" placeholder="Cholesterol">
                        <input type="text" class="form-control" name="Sodium" placeholder="Sodium">
                        <input type="text" class="form-control" name="Carbs" placeholder="Carbs">
                    </div>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">Fiber, Sugar and Protein</span>
                        </div>
                        <input type="text" class="form-control" name="Fiber" placeholder="Fiber">
                        <input type="text" class="form-control" name="Sugar" placeholder="Sugar">
                        <input type="text" class="form-control" name="Protein" placeholder="Protein">
                    </div>
                    <div class="form-group">
                        <label for="mealImage">Upload Meal Image</label>
                        <input type="file" class="form-control-file" id="mealImage" name="img">
                    </div>
                    <div class="form-group">
                        <label for="tags">Tags</label>
                        <input type="text" class="form-control" name="tags" id="tags" placeholder="Tags for this Meal">
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Add Meal</button>
            </div>
        </form>
    </div>
  </div>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
@endsection

@section('script')
    <script>
        $( document ).ready(function() {
            console.log( "document loaded" );
            $( "#filterBy" ).change(function() {
                let filterby = $('#filterBy').val();
                if(filterby == 'All'){
                    window.location.replace("{{ url()->current() }}");
                }
                else {
                    window.location.replace("{{ url()->current() }}?filterBy=" + filterby);
                }
            });
            $('.editMeal').click(function(){
                let mealToEdit = $(this).val();
                alert(mealToEdit);
            });
        });
        $( window ).on( "load", function() {
            console.log( "window loaded" );
        }); 
    </script>
@endsection