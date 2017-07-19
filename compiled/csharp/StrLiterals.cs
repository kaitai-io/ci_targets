// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrLiterals : KaitaiStruct
    {
        public static StrLiterals FromFile(string fileName)
        {
            return new StrLiterals(new KaitaiStream(fileName));
        }

        public StrLiterals(KaitaiStream io, KaitaiStruct parent = null, StrLiterals root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_octalEatup2 = false;
            f_backslashes = false;
            f_octalEatup = false;
            f_doubleQuotes = false;
            f_complexStr = false;
            _read();
        }
        private void _read() {
            }
        private bool f_octalEatup2;
        private string _octalEatup2;
        public string OctalEatup2
        {
            get
            {
                if (f_octalEatup2)
                    return _octalEatup2;
                _octalEatup2 = (string) ("\u00022");
                f_octalEatup2 = true;
                return _octalEatup2;
            }
        }
        private bool f_backslashes;
        private string _backslashes;
        public string Backslashes
        {
            get
            {
                if (f_backslashes)
                    return _backslashes;
                _backslashes = (string) ("\\\\\\");
                f_backslashes = true;
                return _backslashes;
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
                _octalEatup = (string) ("\022");
                f_octalEatup = true;
                return _octalEatup;
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
                _doubleQuotes = (string) ("\"\"\"");
                f_doubleQuotes = true;
                return _doubleQuotes;
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
                _complexStr = (string) ("\0\u0001\u0002\a\b\n\r\t\v\f\u001b=\a\n$\u263b");
                f_complexStr = true;
                return _complexStr;
            }
        }
        private StrLiterals m_root;
        private KaitaiStruct m_parent;
        public StrLiterals M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
