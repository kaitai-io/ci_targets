// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrLiterals : KaitaiStruct
    {
        public static StrLiterals FromFile(string fileName)
        {
            return new StrLiterals(new KaitaiStream(fileName));
        }

        public StrLiterals(KaitaiStream p__io, KaitaiStruct p__parent = null, StrLiterals p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_backslashes = false;
            f_complexStr = false;
            f_doubleQuotes = false;
            f_octalEatup = false;
            f_octalEatup2 = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_backslashes;
        private string _backslashes;
        public string Backslashes
        {
            get
            {
                if (f_backslashes)
                    return _backslashes;
                f_backslashes = true;
                _backslashes = (string) ("\\\\\\");
                return _backslashes;
            }
        }
        private bool f_complexStr;
        private string _complexStr;
        public string ComplexStr
        {
            get
            {
                if (f_complexStr)
                    return _complexStr;
                f_complexStr = true;
                _complexStr = (string) ("\0\u0001\u0002\a\b\n\r\t\v\f\u001b=\a\n$\u263b");
                return _complexStr;
            }
        }
        private bool f_doubleQuotes;
        private string _doubleQuotes;
        public string DoubleQuotes
        {
            get
            {
                if (f_doubleQuotes)
                    return _doubleQuotes;
                f_doubleQuotes = true;
                _doubleQuotes = (string) ("\"\"\"");
                return _doubleQuotes;
            }
        }
        private bool f_octalEatup;
        private string _octalEatup;
        public string OctalEatup
        {
            get
            {
                if (f_octalEatup)
                    return _octalEatup;
                f_octalEatup = true;
                _octalEatup = (string) ("\022");
                return _octalEatup;
            }
        }
        private bool f_octalEatup2;
        private string _octalEatup2;
        public string OctalEatup2
        {
            get
            {
                if (f_octalEatup2)
                    return _octalEatup2;
                f_octalEatup2 = true;
                _octalEatup2 = (string) ("\u00022");
                return _octalEatup2;
            }
        }
        private StrLiterals m_root;
        private KaitaiStruct m_parent;
        public StrLiterals M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
