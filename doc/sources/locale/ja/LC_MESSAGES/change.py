import codecs

def main():
    # Shift_JIS ファイルのパス
    shiftjis_csv_path = './philosophy.po'
    # UTF-8 ファイルのパス
    utf8_csv_path = './philosophy.po'

    # 文字コードを utf-8 に変換して保存
    fin = codecs.open(shiftjis_csv_path, "r", "shift_jis")
    fout_utf = codecs.open(utf8_csv_path, "w", "utf-8")
    for row in fin:
        fout_utf.write(row)
    fin.close()
    fout_utf.close()

if __name__ == '__main__':
    main()