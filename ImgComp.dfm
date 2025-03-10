object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Image Compressor by Raz'
  ClientHeight = 606
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 415
    Top = 563
    Width = 197
    Height = 15
    Caption = 'Move the track to set compression lvl'
  end
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 612
    Height = 511
    Center = True
    Proportional = True
  end
  object Image2: TImage
    Left = 624
    Top = 8
    Width = 1
    Height = 1
  end
  object Image3: TImage
    Left = 168
    Top = 248
    Width = 1
    Height = 1
    Visible = False
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 525
    Width = 612
    Height = 28
    Position = 1
    TabOrder = 0
    OnChange = TrackBar1Change
  end
  object btnOpenImage: TButton
    Left = 8
    Top = 559
    Width = 75
    Height = 25
    Caption = 'Open Image'
    TabOrder = 1
    OnClick = btnOpenImageClick
  end
  object btnCompressImage: TButton
    Left = 168
    Top = 559
    Width = 75
    Height = 25
    Caption = 'Compress'
    TabOrder = 2
    OnClick = btnCompressImageClick
  end
  object btnSaveImage: TButton
    Left = 329
    Top = 559
    Width = 75
    Height = 25
    Caption = 'Save Image'
    TabOrder = 3
    OnClick = btnSaveImageClick
  end
  object OpenDialog1: TOpenDialog
    Left = 496
    Top = 72
  end
  object SaveDialog1: TSaveDialog
    Left = 528
    Top = 456
  end
end
