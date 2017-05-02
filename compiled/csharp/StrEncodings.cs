// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrEncodings : KaitaiStruct
    {
        public static StrEncodings FromFile(string fileName)
        {
            return new StrEncodings(new KaitaiStream(fileName));
        }

        public StrEncodings(KaitaiStream io, KaitaiStruct parent = null, StrEncodings root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _lenOf1 = m_io.ReadU2le();
            _str1 = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(LenOf1));
            _lenOf2 = m_io.ReadU2le();
            _str2 = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(LenOf2));
            _lenOf3 = m_io.ReadU2le();
            _str3 = System.Text.Encoding.GetEncoding("SJIS").GetString(m_io.ReadBytes(LenOf3));
            _lenOf4 = m_io.ReadU2le();
            _str4 = System.Text.Encoding.GetEncoding("CP437").GetString(m_io.ReadBytes(LenOf4));
        }
        private ushort _lenOf1;
        private string _str1;
        private ushort _lenOf2;
        private string _str2;
        private ushort _lenOf3;
        private string _str3;
        private ushort _lenOf4;
        private string _str4;
        private StrEncodings m_root;
        private KaitaiStruct m_parent;
        public ushort LenOf1 { get { return _lenOf1; } }
        public string Str1 { get { return _str1; } }
        public ushort LenOf2 { get { return _lenOf2; } }
        public string Str2 { get { return _str2; } }
        public ushort LenOf3 { get { return _lenOf3; } }
        public string Str3 { get { return _str3; } }
        public ushort LenOf4 { get { return _lenOf4; } }
        public string Str4 { get { return _str4; } }
        public StrEncodings M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
