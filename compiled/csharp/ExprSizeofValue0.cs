// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprSizeofValue0 : KaitaiStruct
    {
        public static ExprSizeofValue0 FromFile(string fileName)
        {
            return new ExprSizeofValue0(new KaitaiStream(fileName));
        }

        public ExprSizeofValue0(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprSizeofValue0 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_selfSizeof = false;
            f_sizeofBlock = false;
            f_sizeofBlockA = false;
            f_sizeofBlockB = false;
            f_sizeofBlockC = false;
            _read();
        }
        private void _read()
        {
            _block1 = new Block(m_io, this, m_root);
            _more = m_io.ReadU2le();
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, ExprSizeofValue0 p__parent = null, ExprSizeofValue0 p__root = null) : base(p__io)
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
            private byte _a;
            private uint _b;
            private byte[] _c;
            private ExprSizeofValue0 m_root;
            private ExprSizeofValue0 m_parent;
            public byte A { get { return _a; } }
            public uint B { get { return _b; } }
            public byte[] C { get { return _c; } }
            public ExprSizeofValue0 M_Root { get { return m_root; } }
            public ExprSizeofValue0 M_Parent { get { return m_parent; } }
        }
        private bool f_selfSizeof;
        private int _selfSizeof;
        public int SelfSizeof
        {
            get
            {
                if (f_selfSizeof)
                    return _selfSizeof;
                f_selfSizeof = true;
                _selfSizeof = (int) (9);
                return _selfSizeof;
            }
        }
        private bool f_sizeofBlock;
        private int _sizeofBlock;
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
        private bool f_sizeofBlockA;
        private int _sizeofBlockA;
        public int SizeofBlockA
        {
            get
            {
                if (f_sizeofBlockA)
                    return _sizeofBlockA;
                f_sizeofBlockA = true;
                _sizeofBlockA = (int) (1);
                return _sizeofBlockA;
            }
        }
        private bool f_sizeofBlockB;
        private int _sizeofBlockB;
        public int SizeofBlockB
        {
            get
            {
                if (f_sizeofBlockB)
                    return _sizeofBlockB;
                f_sizeofBlockB = true;
                _sizeofBlockB = (int) (4);
                return _sizeofBlockB;
            }
        }
        private bool f_sizeofBlockC;
        private int _sizeofBlockC;
        public int SizeofBlockC
        {
            get
            {
                if (f_sizeofBlockC)
                    return _sizeofBlockC;
                f_sizeofBlockC = true;
                _sizeofBlockC = (int) (2);
                return _sizeofBlockC;
            }
        }
        private Block _block1;
        private ushort _more;
        private ExprSizeofValue0 m_root;
        private KaitaiStruct m_parent;
        public Block Block1 { get { return _block1; } }
        public ushort More { get { return _more; } }
        public ExprSizeofValue0 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
