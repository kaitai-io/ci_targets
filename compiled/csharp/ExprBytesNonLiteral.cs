// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprBytesNonLiteral : KaitaiStruct
    {
        public static ExprBytesNonLiteral FromFile(string fileName)
        {
            return new ExprBytesNonLiteral(new KaitaiStream(fileName));
        }

        public ExprBytesNonLiteral(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprBytesNonLiteral p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_calcBytes = false;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
            _two = m_io.ReadU1();
        }
        private bool f_calcBytes;
        private byte[] _calcBytes;
        public byte[] CalcBytes
        {
            get
            {
                if (f_calcBytes)
                    return _calcBytes;
                _calcBytes = (byte[]) (new byte[] { One, Two });
                f_calcBytes = true;
                return _calcBytes;
            }
        }
        private byte _one;
        private byte _two;
        private ExprBytesNonLiteral m_root;
        private KaitaiStruct m_parent;
        public byte One { get { return _one; } }
        public byte Two { get { return _two; } }
        public ExprBytesNonLiteral M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
