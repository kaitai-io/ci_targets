// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrEncodingsEscapingToS : KaitaiStruct
    {
        public static StrEncodingsEscapingToS FromFile(string fileName)
        {
            return new StrEncodingsEscapingToS(new KaitaiStream(fileName));
        }

        public StrEncodingsEscapingToS(KaitaiStream p__io, KaitaiStruct p__parent = null, StrEncodingsEscapingToS p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_str1 = false;
            f_str2 = false;
            f_str3 = false;
            f_str4 = false;
            _read();
        }
        private void _read()
        {
            _lenOf1 = m_io.ReadU2le();
            _str1Raw = m_io.ReadBytes(LenOf1);
            _lenOf2 = m_io.ReadU2le();
            _str2Raw = m_io.ReadBytes(LenOf2);
            _lenOf3 = m_io.ReadU2le();
            _str3Raw = m_io.ReadBytes(LenOf3);
            _lenOf4 = m_io.ReadU2le();
            _str4Raw = m_io.ReadBytes(LenOf4);
        }
        private bool f_str1;
        private string _str1;
        public string Str1
        {
            get
            {
                if (f_str1)
                    return _str1;
                _str1 = (string) (System.Text.Encoding.GetEncoding("ASCII\\x").GetString(Str1Raw));
                f_str1 = true;
                return _str1;
            }
        }
        private bool f_str2;
        private string _str2;
        public string Str2
        {
            get
            {
                if (f_str2)
                    return _str2;
                _str2 = (string) (System.Text.Encoding.GetEncoding("UTF-8\'x").GetString(Str2Raw));
                f_str2 = true;
                return _str2;
            }
        }
        private bool f_str3;
        private string _str3;
        public string Str3
        {
            get
            {
                if (f_str3)
                    return _str3;
                _str3 = (string) (System.Text.Encoding.GetEncoding("SJIS\"x").GetString(Str3Raw));
                f_str3 = true;
                return _str3;
            }
        }
        private bool f_str4;
        private string _str4;
        public string Str4
        {
            get
            {
                if (f_str4)
                    return _str4;
                _str4 = (string) (System.Text.Encoding.GetEncoding("IBM437\nx").GetString(Str4Raw));
                f_str4 = true;
                return _str4;
            }
        }
        private ushort _lenOf1;
        private byte[] _str1Raw;
        private ushort _lenOf2;
        private byte[] _str2Raw;
        private ushort _lenOf3;
        private byte[] _str3Raw;
        private ushort _lenOf4;
        private byte[] _str4Raw;
        private StrEncodingsEscapingToS m_root;
        private KaitaiStruct m_parent;
        public ushort LenOf1 { get { return _lenOf1; } }
        public byte[] Str1Raw { get { return _str1Raw; } }
        public ushort LenOf2 { get { return _lenOf2; } }
        public byte[] Str2Raw { get { return _str2Raw; } }
        public ushort LenOf3 { get { return _lenOf3; } }
        public byte[] Str3Raw { get { return _str3Raw; } }
        public ushort LenOf4 { get { return _lenOf4; } }
        public byte[] Str4Raw { get { return _str4Raw; } }
        public StrEncodingsEscapingToS M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
