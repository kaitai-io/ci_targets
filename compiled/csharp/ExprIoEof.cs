// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprIoEof : KaitaiStruct
    {
        public static ExprIoEof FromFile(string fileName)
        {
            return new ExprIoEof(new KaitaiStream(fileName));
        }

        public ExprIoEof(KaitaiStream io, KaitaiStruct parent = null, ExprIoEof root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            __raw_substream1 = m_io.ReadBytes(4);
            var io___raw_substream1 = new KaitaiStream(__raw_substream1);
            _substream1 = new OneOrTwo(io___raw_substream1, this, m_root);
            __raw_substream2 = m_io.ReadBytes(8);
            var io___raw_substream2 = new KaitaiStream(__raw_substream2);
            _substream2 = new OneOrTwo(io___raw_substream2, this, m_root);
        }
        public partial class OneOrTwo : KaitaiStruct
        {
            public static OneOrTwo FromFile(string fileName)
            {
                return new OneOrTwo(new KaitaiStream(fileName));
            }

            public OneOrTwo(KaitaiStream io, ExprIoEof parent = null, ExprIoEof root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                f_reflectEof = false;
                _read();
            }
            private void _read() {
                _one = m_io.ReadU4le();
                if (!(M_Io.IsEof)) {
                    _two = m_io.ReadU4le();
                }
            }
            private bool f_reflectEof;
            private bool _reflectEof;
            public bool ReflectEof
            {
                get
                {
                    if (f_reflectEof)
                        return _reflectEof;
                    _reflectEof = (bool) (M_Io.IsEof);
                    f_reflectEof = true;
                    return _reflectEof;
                }
            }
            private uint _one;
            private uint _two;
            private ExprIoEof m_root;
            private ExprIoEof m_parent;
            public uint One { get { return _one; } }
            public uint Two { get { return _two; } }
            public ExprIoEof M_Root { get { return m_root; } }
            public ExprIoEof M_Parent { get { return m_parent; } }
        }
        private OneOrTwo _substream1;
        private OneOrTwo _substream2;
        private ExprIoEof m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_substream1;
        private byte[] __raw_substream2;
        public OneOrTwo Substream1 { get { return _substream1; } }
        public OneOrTwo Substream2 { get { return _substream2; } }
        public ExprIoEof M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawSubstream1 { get { return __raw_substream1; } }
        public byte[] M_RawSubstream2 { get { return __raw_substream2; } }
    }
}
