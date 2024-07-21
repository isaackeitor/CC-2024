class Type:
    pass

class BoardRoomType(Type):
    def __str__(self):
        return "SALA_DE_JUNTAS"

class TrainingRoomType(Type):
    def __str__(self):
        return "SALA_DE_CAPACITACION"

class ConferenceRoomType(Type):
    def __str__(self):
        return "SALA_DE_CONFERENCIAS"

class VideoconferenceRoomType(Type):
    def __str__(self):
        return "SALA_DE_VIDEOCONFERENCIAS"