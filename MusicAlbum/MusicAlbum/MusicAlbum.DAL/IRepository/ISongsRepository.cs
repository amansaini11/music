﻿using MusicAlbum.Model.ModelRec;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicAlbum.Repository.Repository
{
   public interface ISongsRepository
    {
        List<SongResponseModel> GetSongList(int albumId, int pageSize, int pageCount, string searchKey);
    }
}
