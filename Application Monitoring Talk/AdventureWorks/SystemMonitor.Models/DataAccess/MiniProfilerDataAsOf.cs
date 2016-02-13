﻿#region Licensing

// This code is provided under the Attribution-NonCommercial-ShareAlike 4.0 International license.
// 
// https://creativecommons.org/licenses/by-nc-sa/4.0/
// 
// TCC Software Solutions 2015
// 

#endregion

#region

using System.Collections.Generic;
using TCC.SystemMonitor.Models.DataObjects;

#endregion

namespace TCC.SystemMonitor.Models.DataAccess
{
    public class MiniProfilerDataAsOfAccess
    {
        private readonly IDataAccess _dataAccess; //has interface attached to it (always has the "I" before it)

        public MiniProfilerDataAsOfAccess(IDataAccess dataAccess)
        {
            _dataAccess = dataAccess;
        }

        public IEnumerable<MiniProfilerData> GetDataAsOf()
        {
            var kvps = new List<KeyValuePair<string, object>>();

            return _dataAccess.Get<MiniProfilerData>("dbo.MiniProfilerDataAsOf", kvps);
        }
    }
}