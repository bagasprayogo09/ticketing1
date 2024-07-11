<x-app-layout>
    <div class="container mx-auto px-4 py-8">
        <h2 class="font-semibold text-xl text-center text-blue-600 dark:text-blue-400 leading-tight">
            {{ __('Rekap Tiket') }}
        </h2>

        <form method="GET" action="{{ route('rekap_ticket') }}" class="mb-6">
            <div class="flex items-center">
                <div class="mr-4">
                    <label for="start_date" class="block text-sm font-medium text-gray-700">Start Date</label>
                    <input type="date" id="start_date" name="start_date" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm bg-blue-100 text-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                </div>
                <div class="px-2 mr-4">
                    <label for="end_date" class="block text-sm font-medium text-gray-700">End Date</label>
                    <input type="date" id="end_date" name="end_date" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm bg-blue-100 text-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500">
                </div>
                <div class="mt-6">
                    <button type="submit" class="btn custom-button-color bg-gradient-to-r from-blue-500 to-blue-700 hover:from-blue-700 hover:to-blue-900 text-black font-bold py-2 px-4 rounded-full shadow-lg transition duration-300 transform hover:scale-105 active:bg-blue-900">
                        Filter
                    </button>
                </div>
            </div>
        </form>

        <a href="{{ route('tickets.export', ['start_date' => request('start_date'), 'end_date' => request('end_date')]) }}" class="btn custom-button-color bg-gradient-to-r from-blue-500 to-blue-700 hover:from-blue-700 hover:to-blue-900 text-black font-bold py-2 px-6 rounded-full shadow-lg transition duration-300 transform hover:scale-100 mb-2">
            Export to Excel
        </a>

        <div class="table-container  overflow-x-auto">
            <table class="min-w-full bg-white border border-gray-300">
                <thead class="table-header dark:table-header-dark">
                    <tr>
                        <th class="py-2 px-4 border-b">Status</th>
                        <th class="py-2 px-4 border-b">User ID</th>
                        <th class="py-2 px-4 border-b">Nama</th>
                        <th class="py-2 px-4 border-b">Email</th>
                        <th class="py-2 px-4 border-b">Departemen</th>
                        <th class="py-2 px-4 border-b">Divisi</th>
                        <th class="py-2 px-4 border-b">Kecamatan</th>
                        <th class="py-2 px-4 border-b">Kategori</th>
                        <th class="py-2 px-4 border-b">Description</th>
                        <th class="py-2 px-4 border-b">Created At</th>
                        <th class="py-2 px-4 border-b">Updated At</th>
                        <th class="py-2 px-4 border-b">Foto</th> <!-- Kolom tambahan untuk gambar -->
                        <th class="py-2 px-4 border-b">Foto closed</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($tickets as $ticket)
                        <tr>
                            <td class="py-2 px-4 border-b">{{ $ticket->status }}</td>
                            <td class="py-2 px-4 border-b">{{ $ticket->user_id }}</td>
                            <td class="py-2 px-4 border-b">{{ $ticket->nama }}</td>
                            <td class="py-2 px-4 border-b">{{ $ticket->email }}</td>
                            <td class="py-2 px-4 border-b">{{ $ticket->departemen }}</td>
                            <td class="py-2 px-4 border-b">{{ $ticket->divisi }}</td>
                            <td class="py-2 px-4 border-b">{{ $ticket->kecamatan }}</td>
                            <td class="py-2 px-4 border-b">{{ $ticket->kategori }}</td>
                            <td class="py-2 px-4 border-b">{{ $ticket->description }}</td>
                            <td class="py-2 px-4 border-b">{{ $ticket->created_at }}</td>
                            <td class="py-2 px-4 border-b">{{ $ticket->updated_at }}</td>
                            <td class="py-2 px-4 border-b">
                                @if($ticket->photo_url)
                                        <img src="{{ $ticket->photo_url }}" alt="Ticket Photo" width="50" height="50">
                                    @else
                                        No Photo
                                    @endif
                            </td>
                            <td class="py-2 px-4 border-b">
                                @if($ticket->status == 'closed')
                                    <img src="" alt="Closed Ticket" class="w-12 h-12">
                                @else
                                    <!-- Jika status tidak closed, tampilkan placeholder atau kosongkan -->
                                @endif
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="11" class="py-2 px-4 text-center">No tickets found for the selected date range.</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
<style>
        .custom-form {
            background-color: #f0f8ff; /* Warna latar belakang form */
        }

        .custom-font-color {
            color: #333; /* Warna teks custom */
        }

        .custom-button-color {
            background-color: blue; /* Warna latar belakang tombol */
            color: white; /* Warna teks tombol */
        }
        .table-container {
            margin: 5px; /* Center the table */
            max-width: 100%; /* Menyesuaikan lebar tabel */
        }
        .table-header {
            background-color: rgb(46, 202, 202); /* bg-gray-300 */
            color: whitesmoke; /* text-gray-800 */
        }
        .table-header-dark {
            background-color: rgb(46, 202, 202); /* bg-gray-900 */
            color: whitesmoke; /* text-gray-200 */
        }
</style>
</x-app-layout>
