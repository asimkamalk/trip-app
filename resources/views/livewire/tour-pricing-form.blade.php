<?php

use App\Models\Config;
use Livewire\Volt\Component;

new class extends Component {
    public int $adult = 0;
    public int $child = 0;
    public ?string $success = null;

    public function mount()
    {
        $pricing = Config::where('name', 'pricing')->first();

        if ($pricing) {
            $data = json_decode($pricing->value, true);
            // Decoded format ['adult' => 3, 'child' => 23]

            $this->adult = $data['adult'];
            $this->child = $data['child'];
        }
    }

    public function save()
    {
        $this->success = null;

        $validated = $this->validate([
            'adult' => ['required', 'numeric', 'min:0', 'max:100000'],
            'child' => ['required', 'numeric', 'min:0', 'max:100000'],
        ]);

        Config::upsert([
            'name' => 'pricing',
            'value' => json_encode(['adult' => $validated['adult'], 'child' => $validated['child']]),
        ], ['name'], ['value']);

        $this->adult = $validated['adult'];
        $this->child = $validated['child'];

        $this->success = 'Pricing updated successfully';
    }
}
?>

<div>
    <form method="post" wire:submit.prevent="save">
        @csrf

        @if ($success)
            <div class="alert alert-success d-flex align-items-center" role="alert">
                <svg class="bi flex-shrink-0 me-2" role="img" aria-label="Success:">
                    <use xlink:href="#check-circle-fill" />
                </svg>
                <div>
                    {{$success}}
                </div>
            </div>
        @endif

        <div class="row">
            <div class="mb-3 col-6">
                <label class="form-label">Adult Pricing</label>
                <input type="number" class="form-control @error('adult') is-invalid @enderror" wire:model="adult">

                @error('adult')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3 col-6">
                <label class="form-label">Child</label>
                <input type="number" class="form-control @error('child') is-invalid @enderror" wire:model="child">

                @error('child')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="mb-3 col">
                <label class="form-label"></label>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </div>
    </form>
</div>