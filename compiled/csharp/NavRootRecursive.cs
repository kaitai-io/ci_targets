// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NavRootRecursive : KaitaiStruct
    {
        public static NavRootRecursive FromFile(string fileName)
        {
            return new NavRootRecursive(new KaitaiStream(fileName));
        }

        public NavRootRecursive(KaitaiStream p__io, KaitaiStruct p__parent = null, NavRootRecursive p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_rootValue = false;
            _read();
        }
        private void _read()
        {
            _value = m_io.ReadU1();
            if (Value == 255) {
                _next = new NavRootRecursive(m_io, this, m_root);
            }
        }
        public byte RootValue
        {
            get
            {
                if (f_rootValue)
                    return _rootValue;
                f_rootValue = true;
                _rootValue = (byte) (M_Root.Value);
                return _rootValue;
            }
        }
        public byte Value { get { return _value; } }
        public NavRootRecursive Next { get { return _next; } }
        public NavRootRecursive M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_rootValue;
        private byte _rootValue;
        private byte _value;
        private NavRootRecursive _next;
        private NavRootRecursive m_root;
        private KaitaiStruct m_parent;
    }
}
