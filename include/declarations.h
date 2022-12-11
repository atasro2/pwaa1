#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

/* numbered processes for now */

//~ gCourtProcessStates:
void CourtInit(struct Main *);
void CourtMain(struct Main *);
void CourtExit(struct Main *);

//~ gTestimonyProcessStates:
void TestimonyInit(struct Main *);
void TestimonyMain(struct Main *);
void TestimonyExit(struct Main *);
void TestimonyAnim(struct Main *);

//~ gQuestioningProcessStates:
void QuestioningInit(struct Main *);
void QuestioningMain(struct Main *);
void QuestioningExit(struct Main *);
void QuestioningAnim(struct Main *);
void QuestioningHoldIt(struct Main *);
void QuestioningObjection(struct Main *);

/* end numbered processes for now */

#endif//GUARD_DECLARATIONS_H