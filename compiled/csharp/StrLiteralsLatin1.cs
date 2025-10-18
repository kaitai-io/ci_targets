// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrLiteralsLatin1 : KaitaiStruct
    {
        public static StrLiteralsLatin1 FromFile(string fileName)
        {
            return new StrLiteralsLatin1(new KaitaiStream(fileName));
        }

        public StrLiteralsLatin1(KaitaiStream p__io, KaitaiStruct p__parent = null, StrLiteralsLatin1 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_parsedEqLiteral = false;
            _read();
        }
        private void _read()
        {
            _lenParsed = m_io.ReadU2le();
            _parsed = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(LenParsed));
        }
        public bool ParsedEqLiteral
        {
            get
            {
                if (f_parsedEqLiteral)
                    return _parsedEqLiteral;
                f_parsedEqLiteral = true;
                _parsedEqLiteral = (bool) (Parsed == "\u00a3");
                return _parsedEqLiteral;
            }
        }
        public ushort LenParsed { get { return _lenParsed; } }
        public string Parsed { get { return _parsed; } }
        public StrLiteralsLatin1 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_parsedEqLiteral;
        private bool _parsedEqLiteral;
        private ushort _lenParsed;
        private string _parsed;
        private StrLiteralsLatin1 m_root;
        private KaitaiStruct m_parent;
    }
}
