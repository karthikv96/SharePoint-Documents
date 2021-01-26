--select * from RawDataRef_2011$
--select * from ['RawDataRef-Period2008$']

--5 five observations

--1st observations I can see that
-- Finding the neighbourhood where home price is less than 20000 from rawdataref_2011$

--select neighbourhood ,[Home Prices] prices from  Rawdataref_2011$ where [Home Prices] >20000

--2nd observations I can see that

--Select Neighbourhood,[Neighbourhood Id],[Households Assisted] from ['RawDataRef-Period2008$'] 
--where [Households Assisted] =1 

--3rd Observation I can see that

--select [Neighbourhood Id],Neighbourhood
--from RawDataRef_2011$ 
--where [Neighbourhood Id] between 1 and 20 
--order by [Neighbourhood Id] desc
 
-- --4th observation I can see that
 
--Select distinct Neighbourhood from RawDataRef_2011$

--5th observation I can see that

--Select Neighbourhood from ['RawDataRef-Period2008$'] where Neighbourhood like 'a%'
 

 ----1st  advance observations I can see that
-- select RawDataRef_2011$.Neighbourhood, RawDataRef_2011$.[Home Prices],['RawDataRef-Period2008$'].[Rent Bank Applicants]
-- from RawDataRef_2011$ inner join ['RawDataRef-Period2008$'] on RawDataRef_2011$.[Neighbourhood Id]=['RawDataRef-Period2008$'].[Neighbourhood Id]


 ----2nd  advance observations I can see that
-- select * from RawDataRef_2011$
-- where [Neighbourhood Id] in
-- ( select [Rent Bank Applicants] from ['RawDataRef-Period2008$'] where  [Rent Bank Applicants]>=20)


 ----3rd  advance observations I can see that

--  select RawDataRef_2011$.Neighbourhood, RawDataRef_2011$.[Home Prices],['RawDataRef-Period2008$'].[Rent Bank Applicants]
-- from RawDataRef_2011$ right join ['RawDataRef-Period2008$'] on RawDataRef_2011$.[Neighbourhood Id]=['RawDataRef-Period2008$'].[Neighbourhood Id]

--1st KPI i can see that

-- select [Households Assisted], sum([Rent Bank Applicants]) as Totalrentbank
-- from ['RawDataRef-Period2008$'] 
-- group by [Households Assisted]
-- order by [Households Assisted]

--2nd KPI i can see that

--  select Avg( [Social Housing Turnover]) as Avgscoialhouisngturnover
-- from ['RawDataRef-Period2008$'] 
--where [Social Housing Turnover] is not null

----3rd KPI i can see that

--Select count( [Mid-Century Highrise Households]) as totalpopulation from RawDataRef_2011$

--3 Views to stored the SELECT statements from KPI's

--Create view totalrentbank as 
-- select [Households Assisted], sum([Rent Bank Applicants]) as Totalrentbank
-- from ['RawDataRef-Period2008$'] 
-- group by [Households Assisted]

--select * from totalrentbank


--Create view Avgsocialhousingturnover as
-- select Avg( [Social Housing Turnover]) as Avgscoialhouisngturnover

--Create view totalpopulation as
--Select count( [Mid-Century Highrise Households]) as totalpopulation from RawDataRef_2011$

--select * from totalpopulation

-- from ['RawDataRef-Period2008$'] 
--where [Social Housing Turnover] is not null

--select * from avgsocialhousingturnover
