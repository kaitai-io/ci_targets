// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class Expr1 : KaitaiStruct
    {
        public static Expr1 FromFile(string fileName)
        {
            return new Expr1(new KaitaiStream(fileName));
        }

        public Expr1(KaitaiStream p__io, KaitaiStruct p__parent = null, Expr1 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_lenOf1Mod = false;
            f_str1Len = false;
            _read();
        }
        private void _read()
        {
            _lenOf1 = m_io.ReadU2le();
            _str1 = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(LenOf1Mod));
        }
        private bool f_lenOf1Mod;
        private int _lenOf1Mod;
        public int LenOf1Mod
        {
            get
            {
                if (f_lenOf1Mod)
                    return _lenOf1Mod;
                _lenOf1Mod = (int) (LenOf1 - 2);
                f_lenOf1Mod = true;
                return _lenOf1Mod;
            }
        }
        private bool f_str1Len;
        private int _str1Len;
        public int Str1Len
        {
            get
            {
                if (f_str1Len)
                    return _str1Len;
                _str1Len = (int) (Str1.Length);
                f_str1Len = true;
                return _str1Len;
            }
        }
        private ushort _lenOf1;
        private string _str1;
        private Expr1 m_root;
        private KaitaiStruct m_parent;
        public ushort LenOf1 { get { return _lenOf1; } }
        public string Str1 { get { return _str1; } }
        public Expr1 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
