/*----------------------------------------------------------------------------*/
/* Copyright (c) 2018-2019 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package frc.robot.commands;

import frc.robot.lib.XboxController;
import frc.robot.subsystems.OctoDriveSubsystem;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;
import edu.wpi.first.wpilibj2.command.CommandBase;

/*
TeleopCommand is a command responcable for the robot's actions in
the teleop period. It creates and gathers input from an XboxController
and calls functions from the given OctoDrive to make it respond
to the user's input.
*/
public class TeleopCommand extends CommandBase {
  @SuppressWarnings({"PMD.UnusedPrivateField", "PMD.SingularField"})
  private XboxController driverController = new XboxController(0);
  private OctoDriveSubsystem octoDrive;


  /*
  Init function. Stores the given OctoDriveSubsystem.
  */
  public TeleopCommand(OctoDriveSubsystem initSubsystem) {
    octoDrive = initSubsystem;
    addRequirements(initSubsystem);
  }
  
  @Override
  public void initialize() {
  }

  /*
  The main function of TeleopCommand, this code is called 50 times a second.
  It updates the XboxController, get's the controller's data, and updates
  the speed of the OctoDrive's motors.
  */
  @Override
  public void execute() {
    //Update the XboxController.
    driverController.controllerPeriodic();

    //Display the XboxController's state using the SmartDashboard
    SmartDashboard.putString("A Button", driverController.getIsAButtonPressed() + "");
    SmartDashboard.putString("B Button", driverController.getIsBButtonPressed() + "");
    SmartDashboard.putString("X Button", driverController.getIsXButtonPressed() + "");
    SmartDashboard.putString("Y Button", driverController.getIsYButtonPressed() + "");

    SmartDashboard.putString("L Bumper", driverController.getIsLBumperPressed() + "");
    SmartDashboard.putString("R Bumper", driverController.getIsRBumperPressed() + "");

    //Calculate the new speeds for the motors.
    int rightMotorDirection = 0;
    int leftMotorDirection = 0;
    double rightMotorSpeed = 0.0;
    double leftMotorSpeed = 0.0;

    if(driverController.getIsBButtonPressed()){
      rightMotorDirection++;
      leftMotorDirection++;
    }
    if(driverController.getIsAButtonPressed()){
      rightMotorDirection--;
      leftMotorDirection--;
    }
    if(driverController.getIsLBumperPressed()){
      rightMotorDirection--;
      leftMotorDirection++;
    }
    if(driverController.getIsRBumperPressed()){
      rightMotorDirection++;
      leftMotorDirection--;
    }

    
    if(rightMotorDirection > 0){
      rightMotorSpeed = 1.0;
    }
    else if(rightMotorDirection < 0){
      rightMotorSpeed = -1.0;
    }


    if(leftMotorDirection > 0){
      leftMotorSpeed = 1.0;
    }
    else if(leftMotorDirection < 0){
      leftMotorSpeed = -1.0;
    }

    //Update the DifferentialDrive's motors.
    octoDrive.setMotors(rightMotorSpeed, leftMotorSpeed);
  }

  /*
  When the command ends, stop the motors.
  */
  @Override
  public void end(boolean interrupted) {
    octoDrive.setMotors(0.0, 0.0);
  }

  @Override
  public boolean isFinished() {
    return false;
  }


}
