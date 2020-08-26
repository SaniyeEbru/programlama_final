
import bs4 as bs
import pymysql
import urllib.request
import numpy as np
import sys
from PyQt5.QtWidgets import *
from PyQt5 import QtWidgets
import matplotlib.pyplot as plt


class Pencere(QtWidgets.QWidget):
    def __init__(self):
        super().__init__()
        self.init_ui()
    def init_ui(self):
        kaynak = urllib.request.urlopen("https://www.gittigidiyor.com/bebek-bezi-ve-islak-havlu-alt-acma/bebek-bezi").read()
        sayfa = bs.BeautifulSoup(kaynak, 'lxml')
        fiyatlardizi = []
        baslıklardizi = []
        basliklar = sayfa.find_all("h3", {"class": "catalog-group-info-title fs14 catalogGroupTitle hidden-m"})
        fiyatlar = sayfa.find_all("span", {"class": "fs16 fontb"})
        for fiyat in fiyatlar:
            fiyat = fiyat.text
            fiyat = fiyat.replace('TL', '')
            fiyat = fiyat.replace(',', '.')
            fiyat = ''.join(fiyat.split())
            fiyatlardizi.append(fiyat)
        for baslik in basliklar:
            baslik = baslik.text
            baslıklardizi.append(baslik)
        conn = pymysql.connect(host="localhost", user="root", passwd="", db="bebekbezi")
        cursor = conn.cursor(pymysql.cursors.DictCursor)

        def temizle():
            cursor.execute(
                ''' DELETE FROM gittigidiyor''')
            conn.commit()
        temizle()

        def guncelle():
            for (isim, fiyat) in zip(baslıklardizi, fiyatlardizi):
                cursor.execute(
                    '''INSERT INTO gittigidiyor (gittigidiyor_isim,gittigidiyor_fiyat)
                       VALUES (%s, %s)''',
                    (isim, fiyat))
                conn.commit()
        guncelle()
        grid = QGridLayout()
        treewidget = QTreeWidget()
        treewidget.setColumnCount(2)
        treewidget.setHeaderLabels(["Başlık", "Fiyat"])
        vericekme = "SELECT * FROM `gittigidiyor`"
        cursor.execute(vericekme)
        veri = cursor.fetchall()

        for row in veri:
            l1 = QTreeWidgetItem([row['gittigidiyor_isim'], (str(row['gittigidiyor_fiyat'])+" TL")])
            treewidget.addTopLevelItem(l1)
        arraylist = []
        arrayliste = []

        def rgr():
            a=10
            while a>1:

                x =  np.array(fiyatlardizi).astype(np.float)
                arraylist.append(np.sum(x))

                arrayliste.append(np.sum(arraylist))
                a-=1
        rgr()

        from sklearn.linear_model import LinearRegression
        linear_reg = LinearRegression()
        x = np.array(arrayliste)
        y = np.array([1, 2, 3, 4, 5,6,7,8,9])
        x = x.reshape(-1, 1)
        y = y.reshape(-1, 1)
        linear_reg.fit(y, x)
        tahmin = linear_reg.predict([[1]])  # Hangi haftayı tahminlemek istiyorsan burayı degısıyorsun
        haftaarray = np.arange(0, 10).reshape(-1, 1)

        plt.scatter(y, x)
        y_head_hafta = linear_reg.predict(haftaarray)
        plt.plot(haftaarray, y_head_hafta, color="green",alpha=0.3)
        plt.xlabel("Hafta")
        plt.ylabel("Kazanç-GittiGidiyor")
        plt.show()
        grid.addWidget(treewidget,0,1)
        conn.commit()



        self.show()
        self.setLayout(grid)
        self.setStyleSheet("background-color: darkturquoise;")
        treewidget.setStyleSheet("background-color: lightseagreen;")
        self.setWindowTitle("Gitti Gidiyor bebek bezleri")

app=(QtWidgets.QApplication(sys.argv))
pencere=Pencere()



class Pencere2(QtWidgets.QWidget):
    def __init__(self):
        super().__init__()
        self.init_ui()
    def init_ui(self):
        kaynak = urllib.request.urlopen("https://www.trendyol.com/bebek-bezi?q=cocuk%20bebek%20bezi&p").read()
        sayfa = bs.BeautifulSoup(kaynak, 'lxml')
        fiyatlardizi = []
        baslıklardizi = []

        basliklar = sayfa.find_all("span", {"class": "prdct-desc-cntnr-name"})
        fiyatlar = sayfa.find_all("div", {"class": "prc-box-sllng"})
        for fiyat in fiyatlar:
            fiyat = fiyat.text
            fiyat = fiyat.replace('TL', '')
            fiyat = fiyat.replace(',', '.')
            fiyat = ''.join(fiyat.split())
            fiyatlardizi.append(fiyat)
        for baslik in basliklar:
            baslik = baslik.text
            baslıklardizi.append(baslik)

        conn = pymysql.connect(host="localhost", user="root", passwd="", db="bebekbezi")
        cursor = conn.cursor(pymysql.cursors.DictCursor)

        def temizle():
            cursor.execute(
                ''' DELETE FROM trendyol''')
            conn.commit()
        temizle()

        def guncelle():
            for (isim, fiyat) in zip(baslıklardizi, fiyatlardizi):
                cursor.execute(
                    '''INSERT INTO trendyol (trendyol_isim,trendyol_fiyat)
                       VALUES (%s, %s)''',
                    (isim, fiyat))
                conn.commit()
        guncelle()
        grid = QGridLayout()
        treewidget = QTreeWidget()
        treewidget.setColumnCount(2)
        treewidget.setHeaderLabels(["Başlık", "Fiyat"])
        vericekme = "SELECT * FROM `trendyol`"
        cursor.execute(vericekme)
        veri = cursor.fetchall()

        for row in veri:
            l1 = QTreeWidgetItem([row['trendyol_isim'], (str(row['trendyol_fiyat'])+" TL")])
            treewidget.addTopLevelItem(l1)
        arraylist = []
        arrayliste = []

        def rgr():
            a=10
            while a>1:

                x =  np.array(fiyatlardizi).astype(np.float)
                arraylist.append(np.sum(x))

                arrayliste.append(np.sum(arraylist))
                a-=1
        rgr()

        from sklearn.linear_model import LinearRegression
        linear_reg = LinearRegression()
        x = np.array(arrayliste)
        y = np.array([1, 2, 3, 4, 5,6,7,8,9])
        x = x.reshape(-1, 1)
        y = y.reshape(-1, 1)
        linear_reg.fit(y, x)
        tahmin = linear_reg.predict([[1]])  # Hangi haftayı tahminlemek istiyorsan burayı degısıyorsun
        haftaarray = np.arange(0, 10).reshape(-1, 1)

        plt.scatter(y, x)
        y_head_hafta = linear_reg.predict(haftaarray)
        plt.plot(haftaarray, y_head_hafta, color="green",alpha=0.3)
        plt.xlabel("Hafta")
        plt.ylabel("Kazanç-Trendyol")
        plt.show()
        grid.addWidget(treewidget,0,1)
        conn.commit()



        self.show()
        self.setLayout(grid)
        self.setStyleSheet("background-color: lightcoral;")
        treewidget.setStyleSheet("background-color: darkorange;")
        self.setWindowTitle("Trendyol Bebek Bezleri")

app2=(QtWidgets.QApplication(sys.argv))
pencere2=Pencere2()
sys.exit(app2.exec_())


