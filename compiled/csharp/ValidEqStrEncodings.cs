// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidEqStrEncodings : KaitaiStruct
    {
        public static ValidEqStrEncodings FromFile(string fileName)
        {
            return new ValidEqStrEncodings(new KaitaiStream(fileName));
        }

        public ValidEqStrEncodings(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidEqStrEncodings p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _lenOf1 = m_io.ReadU2le();
            _str1 = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(LenOf1));
            if (!(Str1 == "Some ASCII"))
            {
                throw new ValidationNotEqualError("Some ASCII", Str1, M_Io, "/seq/1");
            }
            _lenOf2 = m_io.ReadU2le();
            _str2 = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(LenOf2));
            if (!(Str2 == "\u3053\u3093\u306b\u3061\u306f"))
            {
                throw new ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", Str2, M_Io, "/seq/3");
            }
            _lenOf3 = m_io.ReadU2le();
            _str3 = System.Text.Encoding.GetEncoding("SJIS").GetString(m_io.ReadBytes(LenOf3));
            if (!(Str3 == "\u3053\u3093\u306b\u3061\u306f"))
            {
                throw new ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", Str3, M_Io, "/seq/5");
            }
            _lenOf4 = m_io.ReadU2le();
            _str4 = System.Text.Encoding.GetEncoding("IBM437").GetString(m_io.ReadBytes(LenOf4));
            if (!(Str4 == "\u2591\u2592\u2593"))
            {
                throw new ValidationNotEqualError("\u2591\u2592\u2593", Str4, M_Io, "/seq/7");
            }
        }
        private ushort _lenOf1;
        private string _str1;
        private ushort _lenOf2;
        private string _str2;
        private ushort _lenOf3;
        private string _str3;
        private ushort _lenOf4;
        private string _str4;
        private ValidEqStrEncodings m_root;
        private KaitaiStruct m_parent;
        public ushort LenOf1 { get { return _lenOf1; } }
        public string Str1 { get { return _str1; } }
        public ushort LenOf2 { get { return _lenOf2; } }
        public string Str2 { get { return _str2; } }
        public ushort LenOf3 { get { return _lenOf3; } }
        public string Str3 { get { return _str3; } }
        public ushort LenOf4 { get { return _lenOf4; } }
        public string Str4 { get { return _str4; } }
        public ValidEqStrEncodings M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
