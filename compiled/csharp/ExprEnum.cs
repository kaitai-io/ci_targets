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
        private bool f_constDog;
        private Animal _constDog;
        public Animal ConstDog
        {
            get
            {
                if (f_constDog)
                    return _constDog;
                _constDog = (Animal) (((Animal) 4));
                f_constDog = true;
                return _constDog;
            }
        }
        private bool f_derivedBoom;
        private Animal _derivedBoom;
        public Animal DerivedBoom
        {
            get
            {
                if (f_derivedBoom)
                    return _derivedBoom;
                _derivedBoom = (Animal) (((Animal) One));
                f_derivedBoom = true;
                return _derivedBoom;
            }
        }
        private bool f_derivedDog;
        private Animal _derivedDog;
        public Animal DerivedDog
        {
            get
            {
                if (f_derivedDog)
                    return _derivedDog;
                _derivedDog = (Animal) (((Animal) One - 98));
                f_derivedDog = true;
                return _derivedDog;
            }
        }
        private byte _one;
        private ExprEnum m_root;
        private KaitaiStruct m_parent;
        public byte One { get { return _one; } }
        public ExprEnum M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
