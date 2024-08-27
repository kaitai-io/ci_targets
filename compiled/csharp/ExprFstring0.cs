// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprFstring0 : KaitaiStruct
    {
        public static ExprFstring0 FromFile(string fileName)
        {
            return new ExprFstring0(new KaitaiStream(fileName));
        }

        public ExprFstring0(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprFstring0 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_empty = false;
            f_headAndInt = false;
            f_headAndIntLiteral = false;
            f_headAndStr = false;
            f_headAndStrLiteral = false;
            f_literal = false;
            f_literalWithEscapes = false;
            _read();
        }
        private void _read()
        {
            _seqStr = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(5));
            _seqInt = m_io.ReadU1();
        }
        private bool f_empty;
        private string _empty;
        public string Empty
        {
            get
            {
                if (f_empty)
                    return _empty;
                f_empty = true;
                _empty = (string) ("");
                return _empty;
            }
        }
        private bool f_headAndInt;
        private string _headAndInt;
        public string HeadAndInt
        {
            get
            {
                if (f_headAndInt)
                    return _headAndInt;
                f_headAndInt = true;
                _headAndInt = (string) ("abc=" + SeqInt.ToString());
                return _headAndInt;
            }
        }
        private bool f_headAndIntLiteral;
        private string _headAndIntLiteral;
        public string HeadAndIntLiteral
        {
            get
            {
                if (f_headAndIntLiteral)
                    return _headAndIntLiteral;
                f_headAndIntLiteral = true;
                _headAndIntLiteral = (string) ("abc=" + 123.ToString());
                return _headAndIntLiteral;
            }
        }
        private bool f_headAndStr;
        private string _headAndStr;
        public string HeadAndStr
        {
            get
            {
                if (f_headAndStr)
                    return _headAndStr;
                f_headAndStr = true;
                _headAndStr = (string) ("abc=" + SeqStr);
                return _headAndStr;
            }
        }
        private bool f_headAndStrLiteral;
        private string _headAndStrLiteral;
        public string HeadAndStrLiteral
        {
            get
            {
                if (f_headAndStrLiteral)
                    return _headAndStrLiteral;
                f_headAndStrLiteral = true;
                _headAndStrLiteral = (string) ("abc=" + "foo");
                return _headAndStrLiteral;
            }
        }
        private bool f_literal;
        private string _literal;
        public string Literal
        {
            get
            {
                if (f_literal)
                    return _literal;
                f_literal = true;
                _literal = (string) ("abc");
                return _literal;
            }
        }
        private bool f_literalWithEscapes;
        private string _literalWithEscapes;
        public string LiteralWithEscapes
        {
            get
            {
                if (f_literalWithEscapes)
                    return _literalWithEscapes;
                f_literalWithEscapes = true;
                _literalWithEscapes = (string) ("abc\n\tt");
                return _literalWithEscapes;
            }
        }
        private string _seqStr;
        private byte _seqInt;
        private ExprFstring0 m_root;
        private KaitaiStruct m_parent;
        public string SeqStr { get { return _seqStr; } }
        public byte SeqInt { get { return _seqInt; } }
        public ExprFstring0 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
