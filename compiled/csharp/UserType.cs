// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class UserType : KaitaiStruct
    {
        public static UserType FromFile(string fileName)
        {
            return new UserType(new KaitaiStream(fileName));
        }

        public UserType(KaitaiStream p__io, KaitaiStruct p__parent = null, UserType p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = new Header(m_io, this, m_root);
        }
        public partial class Header : KaitaiStruct
        {
            public static Header FromFile(string fileName)
            {
                return new Header(new KaitaiStream(fileName));
            }

            public Header(KaitaiStream p__io, UserType p__parent = null, UserType p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _width = m_io.ReadU4le();
                _height = m_io.ReadU4le();
            }
            private uint _width;
            private uint _height;
            private UserType m_root;
            private UserType m_parent;
            public uint Width { get { return _width; } }
            public uint Height { get { return _height; } }
            public UserType M_Root { get { return m_root; } }
            public UserType M_Parent { get { return m_parent; } }
        }
        private Header _one;
        private UserType m_root;
        private KaitaiStruct m_parent;
        public Header One { get { return _one; } }
        public UserType M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
