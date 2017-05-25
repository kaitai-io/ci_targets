// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BufferedStruct : KaitaiStruct
    {
        public static BufferedStruct FromFile(string fileName)
        {
            return new BufferedStruct(new KaitaiStream(fileName));
        }

        public BufferedStruct(KaitaiStream io, KaitaiStruct parent = null, BufferedStruct root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _len1 = m_io.ReadU4le();
            __raw_block1 = m_io.ReadBytes(Len1);
            var io___raw_block1 = new KaitaiStream(__raw_block1);
            _block1 = new Block(io___raw_block1, this, m_root);
            _len2 = m_io.ReadU4le();
            __raw_block2 = m_io.ReadBytes(Len2);
            var io___raw_block2 = new KaitaiStream(__raw_block2);
            _block2 = new Block(io___raw_block2, this, m_root);
            _finisher = m_io.ReadU4le();
            }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream io, BufferedStruct parent = null, BufferedStruct root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _number1 = m_io.ReadU4le();
                _number2 = m_io.ReadU4le();
                }
            private uint _number1;
            private uint _number2;
            private BufferedStruct m_root;
            private BufferedStruct m_parent;
            public uint Number1 { get { return _number1; } }
            public uint Number2 { get { return _number2; } }
            public BufferedStruct M_Root { get { return m_root; } }
            public BufferedStruct M_Parent { get { return m_parent; } }
        }
        private uint _len1;
        private Block _block1;
        private uint _len2;
        private Block _block2;
        private uint _finisher;
        private BufferedStruct m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_block1;
        private byte[] __raw_block2;
        public uint Len1 { get { return _len1; } }
        public Block Block1 { get { return _block1; } }
        public uint Len2 { get { return _len2; } }
        public Block Block2 { get { return _block2; } }
        public uint Finisher { get { return _finisher; } }
        public BufferedStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBlock1 { get { return __raw_block1; } }
        public byte[] M_RawBlock2 { get { return __raw_block2; } }
    }
}
