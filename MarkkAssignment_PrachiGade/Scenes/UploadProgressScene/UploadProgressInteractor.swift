//
//  UploadProgressInteractor.swift
//  MarkkAssignment_PrachiGade
//
//  Created by Prachi Gade on 02/11/20.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol UploadProgressBusinessLogic
{
  func doSomething(request: UploadProgress.Something.Request)
}

protocol UploadProgressDataStore
{
  //var name: String { get set }
}

class UploadProgressInteractor: UploadProgressBusinessLogic, UploadProgressDataStore
{
  var presenter: UploadProgressPresentationLogic?
  var worker: UploadProgressWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: UploadProgress.Something.Request)
  {
    worker = UploadProgressWorker()
    worker?.doSomeWork()
    
    let response = UploadProgress.Something.Response()
  }
}