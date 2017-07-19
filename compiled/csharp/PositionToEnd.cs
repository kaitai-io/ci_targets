// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class PositionToEnd : KaitaiStruct
    {
        public static PositionToEnd FromFile(string fileName)
        {
            return new PositionToEnd(new KaitaiStream(fileName));
        }

        public PositionToEnd(KaitaiStream io, KaitaiStruct parent = null, PositionToEnd root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_index = false;
            _read();
        }
        private void _read() {
            }
        public partial class IndexObj : KaitaiStruct
        {
            public static IndexObj FromFile(string fileName)
            {
                return new IndexObj(new KaitaiStream(fileName));
            }

            public IndexObj(KaitaiStream io, PositionToEnd parent = null, PositionToEnd root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _foo = m_io.ReadU4le();
                _bar = m_io.ReadU4le();
                }
            private uint _foo;
            private uint _bar;
            private PositionToEnd m_root;
            private PositionToEnd m_parent;
            public uint Foo { get { return _foo; } }
            public uint Bar { get { return _bar; } }
            public PositionToEnd M_Root { get { return m_root; } }
            public PositionToEnd M_Parent { get { return m_parent; } }
        }
        private bool f_index;
        private IndexObj _index;
        public IndexObj Index
        {
            get
            {
                if (f_index)
                    return _index;
                long _pos = m_io.Pos;
                m_io.Seek((M_Io.Size - 8));
                _index = new IndexObj(m_io, this, m_root);
                m_io.Seek(_pos);
                f_index = true;
                return _index;
            }
        }
        private PositionToEnd m_root;
        private KaitaiStruct m_parent;
        public PositionToEnd M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
