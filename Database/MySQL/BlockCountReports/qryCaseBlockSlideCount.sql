/*qryFirstRunSlideCountDerm*/
SELECT COUNT(subTblSlides.SlideID) AS FirstRunSlideCount
        FROM tblSlides as subTblSlides
        INNER JOIN   tblSlideDistribution as subTblSlideDistribution on subTblSlides.SlideDistributionID = subTblSlideDistribution.SlideDistributionID
        WHERE subTblSlideDistribution.DTReadyForCourier >= funPreviousWorkDayCutoffDateTime()
         AND  subTblSlideDistribution.DTReadyForCourier < funCurrentDayFirstRunCutoff() AND
         SlideDistributionLocation = 'LOCNDERM';

/*qryFirstRunBlockCountDerm*/
SELECT Count(qrySubBlockCountWLocation.subBlockID) AS FirstRunBlockCount
FROM (SELECT subTblSlides.BlockID AS subBlockID, subTblSlideDistribution.SlideDistributionLocation
        FROM tblSlides as subTblSlides
        INNER JOIN   tblSlideDistribution as subTblSlideDistribution on subTblSlides.SlideDistributionID = subTblSlideDistribution.SlideDistributionID
        WHERE subTblSlideDistribution.DTReadyForCourier >= funPreviousWorkDayCutoffDateTime()
         AND  subTblSlideDistribution.DTReadyForCourier < funCurrentDayFirstRunCutoff() AND
         SlideDistributionLocation = 'LOCNDERM'
        GROUP BY subTblSlides.BlockID, SlideDistributionLocation) as qrySubBlockCountWLocation
GROUP BY SlideDistributionLocation;

/*qryFirstRunCaseCountDerm*/
SELECT Count(qrySubBlockCountWLocation.subAccessionID) AS FirstRunCaseCount
FROM (SELECT subTblSlides.AccessionID AS subAccessionID, subTblSlideDistribution.SlideDistributionLocation
        FROM tblSlides as subTblSlides
        INNER JOIN   tblSlideDistribution as subTblSlideDistribution on subTblSlides.SlideDistributionID = subTblSlideDistribution.SlideDistributionID
        WHERE subTblSlideDistribution.DTReadyForCourier >= funPreviousWorkDayCutoffDateTime()
         AND  subTblSlideDistribution.DTReadyForCourier < funCurrentDayFirstRunCutoff() AND
         SlideDistributionLocation = 'LOCNDERM'
        GROUP BY subTblSlides.AccessionID, SlideDistributionLocation) as qrySubBlockCountWLocation
GROUP BY SlideDistributionLocation;

/*qrySecondRunSlideCountDerm*/
SELECT COUNT(subTblSlides.SlideID) AS SecondRunSlideCount
        FROM tblSlides as subTblSlides
        INNER JOIN   tblSlideDistribution as subTblSlideDistribution on subTblSlides.SlideDistributionID = subTblSlideDistribution.SlideDistributionID
        WHERE subTblSlideDistribution.DTReadyForCourier >= funCurrentDayFirstRunCutoff()
         AND  subTblSlideDistribution.DTReadyForCourier < funCurrentDaySecondRunCutoff() AND
         SlideDistributionLocation = 'LOCNDERM';

/*qrySecondRunBlockCountDerm*/
SELECT Count(qrySubBlockCountWLocation.subBlockID) AS SecondRunBlockCount
FROM (SELECT subTblSlides.BlockID AS subBlockID, subTblSlideDistribution.SlideDistributionLocation
        FROM tblSlides as subTblSlides
        INNER JOIN   tblSlideDistribution as subTblSlideDistribution on subTblSlides.SlideDistributionID = subTblSlideDistribution.SlideDistributionID
        WHERE subTblSlideDistribution.DTReadyForCourier >= funCurrentDayFirstRunCutoff()
         AND  subTblSlideDistribution.DTReadyForCourier < funCurrentDaySecondRunCutoff() AND
         SlideDistributionLocation = 'LOCNDERM'
        GROUP BY subTblSlides.BlockID, SlideDistributionLocation) as qrySubBlockCountWLocation
GROUP BY SlideDistributionLocation;

/*qrySecondRunCaseCountDerm*/
SELECT Count(qrySubBlockCountWLocation.subAccessionID) AS SecondRunCaseCount
FROM (SELECT subTblSlides.AccessionID AS subAccessionID, subTblSlideDistribution.SlideDistributionLocation
        FROM tblSlides as subTblSlides
        INNER JOIN   tblSlideDistribution as subTblSlideDistribution on subTblSlides.SlideDistributionID = subTblSlideDistribution.SlideDistributionID
        WHERE subTblSlideDistribution.DTReadyForCourier >= funCurrentDayFirstRunCutoff()
         AND  subTblSlideDistribution.DTReadyForCourier < funCurrentDaySecondRunCutoff() AND
         SlideDistributionLocation = 'LOCNDERM'
        GROUP BY subTblSlides.AccessionID, SlideDistributionLocation) as qrySubBlockCountWLocation
GROUP BY SlideDistributionLocation;

/*qryThirdRunSlideCountDerm*/
SELECT COUNT(subTblSlides.SlideID) AS ThirdRunSlideCount
        FROM tblSlides as subTblSlides
        INNER JOIN   tblSlideDistribution as subTblSlideDistribution on subTblSlides.SlideDistributionID = subTblSlideDistribution.SlideDistributionID
        WHERE subTblSlideDistribution.DTReadyForCourier >= funCurrentDaySecondRunCutoff()
         AND  subTblSlideDistribution.DTReadyForCourier < funCurrentDaySecondRunCutoff() AND
         SlideDistributionLocation = 'LOCNDERM';

/*qrySecondRunBlockCountDerm*/
SELECT Count(qrySubBlockCountWLocation.subBlockID) AS SecondRunBlockCount
FROM (SELECT subTblSlides.BlockID AS subBlockID, subTblSlideDistribution.SlideDistributionLocation
        FROM tblSlides as subTblSlides
        INNER JOIN   tblSlideDistribution as subTblSlideDistribution on subTblSlides.SlideDistributionID = subTblSlideDistribution.SlideDistributionID
        WHERE subTblSlideDistribution.DTReadyForCourier >= funCurrentDaySecondRunCutoff()
         AND  subTblSlideDistribution.DTReadyForCourier < funCurrentDaySecondRunCutoff() AND
         SlideDistributionLocation = 'LOCNDERM'
        GROUP BY subTblSlides.BlockID, SlideDistributionLocation) as qrySubBlockCountWLocation
GROUP BY SlideDistributionLocation;

/*qrySecondRunCaseCountDerm*/
SELECT Count(qrySubBlockCountWLocation.subAccessionID) AS SecondRunCaseCount
FROM (SELECT subTblSlides.AccessionID AS subAccessionID, subTblSlideDistribution.SlideDistributionLocation
        FROM tblSlides as subTblSlides
        INNER JOIN   tblSlideDistribution as subTblSlideDistribution on subTblSlides.SlideDistributionID = subTblSlideDistribution.SlideDistributionID
        WHERE subTblSlideDistribution.DTReadyForCourier >= funCurrentDaySecondRunCutoff()
         AND  subTblSlideDistribution.DTReadyForCourier < funCurrentDaySecondRunCutoff() AND
         SlideDistributionLocation = 'LOCNDERM'
        GROUP BY subTblSlides.AccessionID, SlideDistributionLocation) as qrySubBlockCountWLocation
GROUP BY SlideDistributionLocation;