import sys

from sqlalchemy import Column, ForeignKey, Integer, String

from sqlalchemy.ext.declarative import declarative_base

from sqlalchemy.orm import relationship

from sqlalchemy import create_engine

Base = declarative_base()

class Worker(Base):
    __tablename__ = 'worker'
    workerID = Column(Integer, primary_key=True)
    workerName = Column(String(80), nullable = False)
    workerAge = Column(Integer, nullable = False)
    workerEnglishSkill = Column(String(100), nullable = False)
    workerGender = Column(String(10), nullable = False)
    workerUserName = Column(String(80), nullable = False)
    workerStartDate = Column(String(100), nullable = False) 
    workerPicUrl = Column(String(1000), nullable = False)     

class Skill(Base):
    __tablename__ = 'skill'
    skillID = Column(Integer, primary_key=True)
    skillName = Column(String(80), nullable = False)
    skillDescr = Column(String(500), nullable = False) 

class Event(Base):
    __tablename__ = 'event'
    eventID = Column(Integer, primary_key=True)
    eventName = Column(String(100), nullable = False)
    eventStartDate = Column(String(100), nullable = False)
    eventEndDate = Column(String(100), nullable = False)
    eventDetails = Column(String(1000), nullable = False)
    eventPicUrl = Column(String(1000), nullable = False) 
    eventCategory = Column(String(1), nullable = False) 
    
class WorkerSkill(Base):
    __tablename__ = 'workerskill'
    worker = relationship(Worker)
    skill = relationship(Skill)
    ROW_ID = Column(Integer, primary_key = True)
    WorkerID = Column(Integer, ForeignKey('worker.workerID'))
    SkillID = Column(Integer, ForeignKey('skill.skillID'))

class EventHistory(Base):
    __tablename__ = 'eventhistory'
    worker = relationship(Worker)
    event = relationship(Event)
    RowID = Column(Integer, primary_key = True)
    WorkerID = Column(Integer, ForeignKey('worker.workerID'))
    EventID = Column(Integer, ForeignKey('event.eventID'))
    date = Column(String(80), nullable = False)

class CheckIn(Base):
    __tablename__ = 'checkin'
    worker = relationship(Worker)
    ROWID = Column(Integer, primary_key = True)
    WorkerID = Column(Integer, ForeignKey('worker.workerID'))
    date = Column(String(80), nullable = False) 

#This line has to be at the end of the file
engine = create_engine('sqlite:///info.db')
Base.metadata.create_all(engine)

    
