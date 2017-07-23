// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NavParentSwitch : KaitaiStruct
    {
        public static NavParentSwitch FromFile(string fileName)
        {
            return new NavParentSwitch(new KaitaiStream(fileName));
        }

        public NavParentSwitch(KaitaiStream io, KaitaiStruct parent = null, NavParentSwitch root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _category = m_io.ReadU1();
            switch (Category) {
            case 1: {
                _content = new Element1(m_io, this, m_root);
                break;
            }
            }
        }
        public partial class Element1 : KaitaiStruct
        {
            public static Element1 FromFile(string fileName)
            {
                return new Element1(new KaitaiStream(fileName));
            }

            public Element1(KaitaiStream io, NavParentSwitch parent = null, NavParentSwitch root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _foo = m_io.ReadU1();
                _subelement = new Subelement1(m_io, this, m_root);
            }
            private byte _foo;
            private Subelement1 _subelement;
            private NavParentSwitch m_root;
            private NavParentSwitch m_parent;
            public byte Foo { get { return _foo; } }
            public Subelement1 Subelement { get { return _subelement; } }
            public NavParentSwitch M_Root { get { return m_root; } }
            public NavParentSwitch M_Parent { get { return m_parent; } }
        }
        public partial class Subelement1 : KaitaiStruct
        {
            public static Subelement1 FromFile(string fileName)
            {
                return new Subelement1(new KaitaiStream(fileName));
            }

            public Subelement1(KaitaiStream io, NavParentSwitch.Element1 parent = null, NavParentSwitch root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                if (M_Parent.Foo == 66) {
                    _bar = m_io.ReadU1();
                }
            }
            private byte? _bar;
            private NavParentSwitch m_root;
            private NavParentSwitch.Element1 m_parent;
            public byte? Bar { get { return _bar; } }
            public NavParentSwitch M_Root { get { return m_root; } }
            public NavParentSwitch.Element1 M_Parent { get { return m_parent; } }
        }
        private byte _category;
        private Element1 _content;
        private NavParentSwitch m_root;
        private KaitaiStruct m_parent;
        public byte Category { get { return _category; } }
        public Element1 Content { get { return _content; } }
        public NavParentSwitch M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
