// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;

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
                _empty = (string) ("");
                f_empty = true;
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
                _headAndInt = (string) ("abc=" + Convert.ToString((long) (SeqInt), 10));
                f_headAndInt = true;
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
                _headAndIntLiteral = (string) ("abc=" + Convert.ToString((long) (123), 10));
                f_headAndIntLiteral = true;
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
                _headAndStr = (string) ("abc=" + SeqStr);
                f_headAndStr = true;
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
                _headAndStrLiteral = (string) ("abc=" + "foo");
                f_headAndStrLiteral = true;
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
                _literal = (string) ("abc");
                f_literal = true;
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
                _literalWithEscapes = (string) ("abc\n\tt");
                f_literalWithEscapes = true;
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
