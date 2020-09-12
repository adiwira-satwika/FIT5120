Create procedure [dbo].[AddQuiz]
(
	@States nvarchar (50),
	@Occupants int,
	@Income double precision,
	@EnergyBills double precision,
	@WaterBills double precision,
	@HeaterTypes nvarchar (50),
	@HeaterDuration int,
	@WMTypes nvarchar (50),
	@WashingFrequency int,
	@Room int,
	@BulbTypes nvarchar (50),
	@BulbDuration int

)
as
begin
	Insert into QuizDB values(@States, @Occupants, @Income, @EnergyBills, @WaterBills, @HeaterTypes, @HeaterDuration, @WMTypes, 
		@WashingFrequency, @Room, @BulbTypes, @BulbDuration)
End