// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsEnum : KaitaiStruct
    {
        public static ParamsEnum FromFile(string fileName)
        {
            return new ParamsEnum(new KaitaiStream(fileName));
        }


        public enum Animal
        {
            Dog = 4,
            Cat = 7,
            Chicken = 12,
        }
        public ParamsEnum(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsEnum p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = ((Animal) m_io.ReadU1());
            _invokeWithParam = new WithParam(One, m_io, this, m_root);
        }
        public partial class WithParam : KaitaiStruct
        {
            public WithParam(Animal p_enumeratedOne, KaitaiStream p__io, ParamsEnum p__parent = null, ParamsEnum p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _enumeratedOne = p_enumeratedOne;
                f_isCat = false;
                _read();
            }
            private void _read()
            {
            }
            private bool f_isCat;
            private bool _isCat;
            public bool IsCat
            {
                get
                {
                    if (f_isCat)
                        return _isCat;
                    f_isCat = true;
                    _isCat = (bool) (EnumeratedOne == ParamsEnum.Animal.Cat);
                    return _isCat;
                }
            }
            private Animal _enumeratedOne;
            private ParamsEnum m_root;
            private ParamsEnum m_parent;
            public Animal EnumeratedOne { get { return _enumeratedOne; } }
            public ParamsEnum M_Root { get { return m_root; } }
            public ParamsEnum M_Parent { get { return m_parent; } }
        }
        private Animal _one;
        private WithParam _invokeWithParam;
        private ParamsEnum m_root;
        private KaitaiStruct m_parent;
        public Animal One { get { return _one; } }
        public WithParam InvokeWithParam { get { return _invokeWithParam; } }
        public ParamsEnum M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
