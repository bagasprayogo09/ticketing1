<x-app-layout>
    <h2 class="font-semibold text-xl text-center text-blue-600 dark:text-blue-400 leading-tight">
        {{ __('Edit Data Divisi Anda') }}
    </h2>
    @if ($errors->any())
    <div class="mb-4">
        <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
            <strong class="font-bold">Oops! Ada kesalahan:</strong>
            <span class="block sm:inline">
                <ul class="mt-2 ml-4 list-disc list-inside">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </span>
        </div>
    </div>
@endif

<div class="max-w-lg mx-auto bg-custom text-white p-6 rounded-lg shadow-lg mt-10">
    <form action="{{ route('divisions.update', $division) }}" method="POST">
        @csrf
        @method('PUT')
            <div class="mb-2">
                <label for="name" class="block text-gray-700 light:text-gray-300">Nama</label>
                <input type="text" name="name" class="text-black w-full px-4 py-2 border border-cyan-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-cyan-500" value="{{ old('nama', $kategorimasalah->nama ?? '') }}" required>
            </div>
            <div class="form-group mb-4">
                <label for="status" class="block text-black font-bold mb-2">Status:</label>
                <select for="status" class="text-black" name="status" required>
                    <option value="" disabled selected>Select status</option>
                    <option value="active" {{ old('status') == 'active' ? 'selected' : '' }}>Active</option>
                    <option value="inactive" {{ old('status') == 'inactive' ? 'selected' : '' }}>Inactive</option>
                </select>
            </div>
            <div class="mt-4 flex justify-center">
                <button type="submit" id="submitButton" class="btn-custom">
                    {{ __('Update') }}
                </button>
            </div>
        </form>
    </div>
<style>
    .bg-custom {
            background: linear-gradient(135deg, #6EE7B7 0%, #3B82F6 100%);
            max-width: 40%;
            max-height: 60%; /* Atur maksimal tinggi */
        }

        .btn-custom {
            background: linear-gradient(to right, #56ab2f, rgb(112, 148, 68)); /* Warna gradasi hijau */
            color: white; /* Warna teks putih */
            padding: 10px 20px;
            border: none;
            border-radius: 25px; /* Membuat tombol berbentuk oval */
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .btn-custom:hover {
            background: linear-gradient(to right, rgb(112, 148, 68), #56ab2f); /* Gradasi hijau terbalik untuk efek hover */
            transform: scale(1.05); /* Efek pembesaran sedikit saat hover */
        }

        .btn-custom:active {
            transform: scale(0.95); /* Efek pengecilan saat tombol ditekan */
        }
</style>
</x-app-layout>

