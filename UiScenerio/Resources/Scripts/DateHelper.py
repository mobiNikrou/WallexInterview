from datetime import datetime, timedelta


class DateHelper:
    
    def get_tomorrow_day_number(self):

        tomorrow_date = datetime.now() + timedelta(days=1)
        tomorrow_day = tomorrow_date.day
        return str(tomorrow_day)

