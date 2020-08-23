// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprSizeofType1 : KaitaiStruct
    {
        public static ExprSizeofType1 FromFile(string fileName)
        {
            return new ExprSizeofType1(new KaitaiStream(fileName));
        }

        public ExprSizeofType1(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprSizeofType1 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_sizeofBlock = false;
            f_sizeofSubblock = false;
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

            public Block(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprSizeofType1 p__root = null) : base(p__io)
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
                _d = new Subblock(m_io, this, m_root);
            }
            public partial class Subblock : KaitaiStruct
            {
                public static Subblock FromFile(string fileName)
                {
                    return new Subblock(new KaitaiStream(fileName));
                }

                public Subblock(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprSizeofType1 p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _a = m_io.ReadBytes(4);
                }
                private byte[] _a;
                private ExprSizeofType1 m_root;
                private KaitaiStruct m_parent;
                public byte[] A { get { return _a; } }
                public ExprSizeofType1 M_Root { get { return m_root; } }
                public KaitaiStruct M_Parent { get { return m_parent; } }
            }
            private byte _a;
            private uint _b;
            private byte[] _c;
            private Subblock _d;
            private ExprSizeofType1 m_root;
            private KaitaiStruct m_parent;
            public byte A { get { return _a; } }
            public uint B { get { return _b; } }
            public byte[] C { get { return _c; } }
            public Subblock D { get { return _d; } }
            public ExprSizeofType1 M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        private bool f_sizeofBlock;
        private int _sizeofBlock;
        public int SizeofBlock
        {
            get
            {
                if (f_sizeofBlock)
                    return _sizeofBlock;
                _sizeofBlock = (int) (11);
                f_sizeofBlock = true;
                return _sizeofBlock;
            }
        }
        private bool f_sizeofSubblock;
        private int _sizeofSubblock;
        public int SizeofSubblock
        {
            get
            {
                if (f_sizeofSubblock)
                    return _sizeofSubblock;
                _sizeofSubblock = (int) (4);
                f_sizeofSubblock = true;
                return _sizeofSubblock;
            }
        }
        private ExprSizeofType1 m_root;
        private KaitaiStruct m_parent;
        public ExprSizeofType1 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
