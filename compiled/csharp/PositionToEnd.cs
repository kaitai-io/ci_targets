// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class PositionToEnd : KaitaiStruct
    {
        public static PositionToEnd FromFile(string fileName)
        {
            return new PositionToEnd(new KaitaiStream(fileName));
        }

        public PositionToEnd(KaitaiStream p__io, KaitaiStruct p__parent = null, PositionToEnd p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_index = false;
            _read();
        }
        private void _read()
        {
        }
        public partial class IndexObj : KaitaiStruct
        {
            public static IndexObj FromFile(string fileName)
            {
                return new IndexObj(new KaitaiStream(fileName));
            }

            public IndexObj(KaitaiStream p__io, PositionToEnd p__parent = null, PositionToEnd p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _foo = m_io.ReadU4le();
                _bar = m_io.ReadU4le();
            }
            public uint Foo { get { return _foo; } }
            public uint Bar { get { return _bar; } }
            public PositionToEnd M_Root { get { return m_root; } }
            public PositionToEnd M_Parent { get { return m_parent; } }
            private uint _foo;
            private uint _bar;
            private PositionToEnd m_root;
            private PositionToEnd m_parent;
        }
        public IndexObj Index
        {
            get
            {
                if (f_index)
                    return _index;
                f_index = true;
                long _pos = m_io.Pos;
                m_io.Seek(M_Io.Size - 8);
                _index = new IndexObj(m_io, this, m_root);
                m_io.Seek(_pos);
                return _index;
            }
        }
        public PositionToEnd M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_index;
        private IndexObj _index;
        private PositionToEnd m_root;
        private KaitaiStruct m_parent;
    }
}
