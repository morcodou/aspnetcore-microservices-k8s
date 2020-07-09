﻿using System.Collections.Generic;
using GloboTicket.Client.Models.Api;

namespace GloboTicket.Client.Models.View
{
    public class EventListModel
    {
        public IEnumerable<Event> Events { get; set; }
        public int NumberOfItems { get; set; }
    }
}