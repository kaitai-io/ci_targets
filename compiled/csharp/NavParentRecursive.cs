// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NavParentRecursive : KaitaiStruct
    {
        public static NavParentRecursive FromFile(string fileName)
        {
            return new NavParentRecursive(new KaitaiStream(fileName));
        }

        public NavParentRecursive(KaitaiStream p__io, KaitaiStruct p__parent = null, NavParentRecursive p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_parentValue = false;
            _read();
        }
        private void _read()
        {
            _value = m_io.ReadU1();
            if (Value == 255) {
                _next = new NavParentRecursive(m_io, this, m_root);
            }
        }
        private bool f_parentValue;
        private byte? _parentValue;
        public byte? ParentValue
        {
            get
            {
                if (f_parentValue)
                    return _parentValue;
                if (Value != 255) {
                    _parentValue = (byte) (((NavParentRecursive) (M_Parent)).Value);
                }
                f_parentValue = true;
                return _parentValue;
            }
        }
        private byte _value;
        private NavParentRecursive _next;
        private NavParentRecursive m_root;
        private KaitaiStruct m_parent;
        public byte Value { get { return _value; } }
        public NavParentRecursive Next { get { return _next; } }
        public NavParentRecursive M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
