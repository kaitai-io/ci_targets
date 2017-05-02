// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrLiterals2 : KaitaiStruct
    {
        public static StrLiterals2 FromFile(string fileName)
        {
            return new StrLiterals2(new KaitaiStream(fileName));
        }

        public StrLiterals2(KaitaiStream io, KaitaiStruct parent = null, StrLiterals2 root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            f_dollar1 = false;
            f_dollar2 = false;
            f_hash = false;
            f_atSign = false;
        }
        private bool f_dollar1;
        private string _dollar1;
        public string Dollar1
        {
            get
            {
                if (f_dollar1)
                    return _dollar1;
                _dollar1 = (string) ("$foo");
                f_dollar1 = true;
                return _dollar1;
            }
        }
        private bool f_dollar2;
        private string _dollar2;
        public string Dollar2
        {
            get
            {
                if (f_dollar2)
                    return _dollar2;
                _dollar2 = (string) ("${foo}");
                f_dollar2 = true;
                return _dollar2;
            }
        }
        private bool f_hash;
        private string _hash;
        public string Hash
        {
            get
            {
                if (f_hash)
                    return _hash;
                _hash = (string) ("#{foo}");
                f_hash = true;
                return _hash;
            }
        }
        private bool f_atSign;
        private string _atSign;
        public string AtSign
        {
            get
            {
                if (f_atSign)
                    return _atSign;
                _atSign = (string) ("@foo");
                f_atSign = true;
                return _atSign;
            }
        }
        private StrLiterals2 m_root;
        private KaitaiStruct m_parent;
        public StrLiterals2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
