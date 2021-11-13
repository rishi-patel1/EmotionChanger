fig = uifigure('Name','CHANGE EMOTIONS');
fig.Position(3:4) = [380 310];

[k,m]=EmotionChanger("C:\Users\varna\OneDrive\Desktop\emotion changer\selected images\f (6).jpg");

btn1 = uibutton(fig,'push',...
                'Text','Smile',...
               'Position',[100 200 200 42],...
               'ButtonPushedFcn', @(btn,event) plotButtonPushed1(btn1,k,m));
btn2 = uibutton(fig,'push',...
                'Text','Frown',...
               'Position',[100 150 200 42],...
               'ButtonPushedFcn', @(btn,event) plotButtonPushed2(btn2,k,m));
btn3 = uibutton(fig,'push',...
                'Text','Neutral',...
               'Position',[100 100 200 42],...
               'ButtonPushedFcn', @(btn,event) plotButtonPushed3(btn3,k,m));
btn1.BackgroundColor='y';
btn1.FontWeight='bold';
btn1.FontSize=14;
btn2.BackgroundColor='g';
btn2.FontWeight='bold';
btn2.FontSize=14;
btn3.BackgroundColor='#4DBEEE';
btn3.FontWeight='bold';
btn3.FontSize=14;

function plotButtonPushed2(btn,k,m)
        sad_lip_seg(k,m);
end

function plotButtonPushed1(btn,k,m)
        smile_lip_seg(k,m);
end

function plotButtonPushed3(btn,k,m)
        neutral_lip_seg(k,m);
end