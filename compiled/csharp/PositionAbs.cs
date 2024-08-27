// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class PositionAbs : KaitaiStruct
    {
        public static PositionAbs FromFile(string fileName)
        {
            return new PositionAbs(new KaitaiStream(fileName));
        }

        public PositionAbs(KaitaiStream p__io, KaitaiStruct p__parent = null, PositionAbs p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_index = false;
            _read();
        }
        private void _read()
        {
            _indexOffset = m_io.ReadU4le();
        }
        public partial class IndexObj : KaitaiStruct
        {
            public static IndexObj FromFile(string fileName)
            {
                return new IndexObj(new KaitaiStream(fileName));
            }

            public IndexObj(KaitaiStream p__io, PositionAbs p__parent = null, PositionAbs p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _entry = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true));
            }
            private string _entry;
            private PositionAbs m_root;
            private PositionAbs m_parent;
            public string Entry { get { return _entry; } }
            public PositionAbs M_Root { get { return m_root; } }
            public PositionAbs M_Parent { get { return m_parent; } }
        }
        private bool f_index;
        private IndexObj _index;
        public IndexObj Index
        {
            get
            {
                if (f_index)
                    return _index;
                f_index = true;
                long _pos = m_io.Pos;
                m_io.Seek(IndexOffset);
                _index = new IndexObj(m_io, this, m_root);
                m_io.Seek(_pos);
                return _index;
            }
        }
        private uint _indexOffset;
        private PositionAbs m_root;
        private KaitaiStruct m_parent;
        public uint IndexOffset { get { return _indexOffset; } }
        public PositionAbs M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
