// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NavParentVsValueInst : KaitaiStruct
    {
        public static NavParentVsValueInst FromFile(string fileName)
        {
            return new NavParentVsValueInst(new KaitaiStream(fileName));
        }

        public NavParentVsValueInst(KaitaiStream io, KaitaiStruct parent = null, NavParentVsValueInst root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _s1 = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(124, false, true, true));
            _child = new ChildObj(m_io, this, m_root);
        }
        public partial class ChildObj : KaitaiStruct
        {
            public static ChildObj FromFile(string fileName)
            {
                return new ChildObj(new KaitaiStream(fileName));
            }

            public ChildObj(KaitaiStream io, NavParentVsValueInst parent = null, NavParentVsValueInst root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                f_doSomething = false;
            }
            private bool f_doSomething;
            private bool _doSomething;
            public bool DoSomething
            {
                get
                {
                    if (f_doSomething)
                        return _doSomething;
                    _doSomething = (bool) ((M_Parent.S1 == "foo" ? true : false));
                    f_doSomething = true;
                    return _doSomething;
                }
            }
            private NavParentVsValueInst m_root;
            private NavParentVsValueInst m_parent;
            public NavParentVsValueInst M_Root { get { return m_root; } }
            public NavParentVsValueInst M_Parent { get { return m_parent; } }
        }
        private string _s1;
        private ChildObj _child;
        private NavParentVsValueInst m_root;
        private KaitaiStruct m_parent;
        public string S1 { get { return _s1; } }
        public ChildObj Child { get { return _child; } }
        public NavParentVsValueInst M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
