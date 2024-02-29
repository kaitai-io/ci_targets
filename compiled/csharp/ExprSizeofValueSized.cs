// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprSizeofValueSized : KaitaiStruct
    {
        public static ExprSizeofValueSized FromFile(string fileName)
        {
            return new ExprSizeofValueSized(new KaitaiStream(fileName));
        }

        public ExprSizeofValueSized(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprSizeofValueSized p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_sizeofBlockC = false;
            f_selfSizeof = false;
            f_sizeofBlockA = false;
            f_sizeofBlockB = false;
            f_sizeofBlock = false;
            _read();
        }
        private void _read()
        {
            __raw_block1 = m_io.ReadBytes(12);
            var io___raw_block1 = new KaitaiStream(__raw_block1);
            _block1 = new Block(io___raw_block1, this, m_root);
            _more = m_io.ReadU2le();
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, ExprSizeofValueSized p__parent = null, ExprSizeofValueSized p__root = null) : base(p__io)
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
            private ExprSizeofValueSized m_root;
            private ExprSizeofValueSized m_parent;
            public byte A { get { return _a; } }
            public uint B { get { return _b; } }
            public byte[] C { get { return _c; } }
            public ExprSizeofValueSized M_Root { get { return m_root; } }
            public ExprSizeofValueSized M_Parent { get { return m_parent; } }
        }
        private bool f_sizeofBlockC;
        private int _sizeofBlockC;
        public int SizeofBlockC
        {
            get
            {
                if (f_sizeofBlockC)
                    return _sizeofBlockC;
                _sizeofBlockC = (int) (2);
                f_sizeofBlockC = true;
                return _sizeofBlockC;
            }
        }
        private bool f_selfSizeof;
        private int _selfSizeof;
        public int SelfSizeof
        {
            get
            {
                if (f_selfSizeof)
                    return _selfSizeof;
                _selfSizeof = (int) (14);
                f_selfSizeof = true;
                return _selfSizeof;
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
                _sizeofBlockA = (int) (1);
                f_sizeofBlockA = true;
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
                _sizeofBlockB = (int) (4);
                f_sizeofBlockB = true;
                return _sizeofBlockB;
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
                _sizeofBlock = (int) (12);
                f_sizeofBlock = true;
                return _sizeofBlock;
            }
        }
        private Block _block1;
        private ushort _more;
        private ExprSizeofValueSized m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_block1;
        public Block Block1 { get { return _block1; } }
        public ushort More { get { return _more; } }
        public ExprSizeofValueSized M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBlock1 { get { return __raw_block1; } }
    }
}
