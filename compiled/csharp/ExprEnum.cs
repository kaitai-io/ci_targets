// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprEnum : KaitaiStruct
    {
        public static ExprEnum FromFile(string fileName)
        {
            return new ExprEnum(new KaitaiStream(fileName));
        }


        public enum Animal
        {
            Dog = 4,
            Cat = 7,
            Chicken = 12,
            Boom = 102,
        }
        public ExprEnum(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprEnum p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_constDog = false;
            f_derivedBoom = false;
            f_derivedDog = false;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
        }
        public Animal ConstDog
        {
            get
            {
                if (f_constDog)
                    return _constDog;
                f_constDog = true;
                _constDog = (Animal) (((Animal) 4));
                return _constDog;
            }
        }
        public Animal DerivedBoom
        {
            get
            {
                if (f_derivedBoom)
                    return _derivedBoom;
                f_derivedBoom = true;
                _derivedBoom = (Animal) (((Animal) One));
                return _derivedBoom;
            }
        }
        public Animal DerivedDog
        {
            get
            {
                if (f_derivedDog)
                    return _derivedDog;
                f_derivedDog = true;
                _derivedDog = (Animal) (((Animal) One - 98));
                return _derivedDog;
            }
        }
        public byte One { get { return _one; } }
        public ExprEnum M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_constDog;
        private Animal _constDog;
        private bool f_derivedBoom;
        private Animal _derivedBoom;
        private bool f_derivedDog;
        private Animal _derivedDog;
        private byte _one;
        private ExprEnum m_root;
        private KaitaiStruct m_parent;
    }
}
