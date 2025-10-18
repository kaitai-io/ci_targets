// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprSizeofType0 : KaitaiStruct
    {
        public static ExprSizeofType0 FromFile(string fileName)
        {
            return new ExprSizeofType0(new KaitaiStream(fileName));
        }

        public ExprSizeofType0(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprSizeofType0 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_sizeofBlock = false;
            _read();
        }
        private void _read()
        {
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprSizeofType0 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _a = m_io.ReadU1();
                _b = m_io.ReadU4le();
                _c = m_io.ReadBytes(2);
            }
            public byte A { get { return _a; } }
            public uint B { get { return _b; } }
            public byte[] C { get { return _c; } }
            public ExprSizeofType0 M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
            private byte _a;
            private uint _b;
            private byte[] _c;
            private ExprSizeofType0 m_root;
            private KaitaiStruct m_parent;
        }
        public int SizeofBlock
        {
            get
            {
                if (f_sizeofBlock)
                    return _sizeofBlock;
                f_sizeofBlock = true;
                _sizeofBlock = (int) (7);
                return _sizeofBlock;
            }
        }
        public ExprSizeofType0 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_sizeofBlock;
        private int _sizeofBlock;
        private ExprSizeofType0 m_root;
        private KaitaiStruct m_parent;
    }
}
