// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumDeep : KaitaiStruct
    {
        public static EnumDeep FromFile(string fileName)
        {
            return new EnumDeep(new KaitaiStream(fileName));
        }

        public EnumDeep(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumDeep p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _pet1 = ((Container1.Animal) m_io.ReadU4le());
            _pet2 = ((Container1.Container2.Animal) m_io.ReadU4le());
        }
        public partial class Container1 : KaitaiStruct
        {
            public static Container1 FromFile(string fileName)
            {
                return new Container1(new KaitaiStream(fileName));
            }


            public enum Animal
            {
                Dog = 4,
                Cat = 7,
                Chicken = 12,
            }
            public Container1(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumDeep p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            public partial class Container2 : KaitaiStruct
            {
                public static Container2 FromFile(string fileName)
                {
                    return new Container2(new KaitaiStream(fileName));
                }


                public enum Animal
                {
                    Canary = 4,
                    Turtle = 7,
                    Hare = 12,
                }
                public Container2(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumDeep p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                }
                public EnumDeep M_Root { get { return m_root; } }
                public KaitaiStruct M_Parent { get { return m_parent; } }
                private EnumDeep m_root;
                private KaitaiStruct m_parent;
            }
            public EnumDeep M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
            private EnumDeep m_root;
            private KaitaiStruct m_parent;
        }
        public Container1.Animal Pet1 { get { return _pet1; } }
        public Container1.Container2.Animal Pet2 { get { return _pet2; } }
        public EnumDeep M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private Container1.Animal _pet1;
        private Container1.Container2.Animal _pet2;
        private EnumDeep m_root;
        private KaitaiStruct m_parent;
    }
}
