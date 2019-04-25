// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class ExprArray : KaitaiStruct
    {
        public static ExprArray FromFile(string fileName)
        {
            return new ExprArray(new KaitaiStream(fileName));
        }

        public ExprArray(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprArray p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_aintFirst = false;
            f_afloatSize = false;
            f_astrSize = false;
            f_aintMin = false;
            f_afloatMin = false;
            f_aintSize = false;
            f_aintLast = false;
            f_afloatLast = false;
            f_astrFirst = false;
            f_astrLast = false;
            f_aintMax = false;
            f_afloatFirst = false;
            f_astrMin = false;
            f_astrMax = false;
            f_afloatMax = false;
            _read();
        }
        private void _read()
        {
            _aint = new List<uint>((int) (4));
            for (var i = 0; i < 4; i++)
            {
                _aint.Add(m_io.ReadU4le());
            }
            _afloat = new List<double>((int) (3));
            for (var i = 0; i < 3; i++)
            {
                _afloat.Add(m_io.ReadF8le());
            }
            _astr = new List<string>((int) (3));
            for (var i = 0; i < 3; i++)
            {
                _astr.Add(System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true)));
            }
        }
        private bool f_aintFirst;
        private uint _aintFirst;
        public uint AintFirst
        {
            get
            {
                if (f_aintFirst)
                    return _aintFirst;
                _aintFirst = (uint) (Aint[0]);
                f_aintFirst = true;
                return _aintFirst;
            }
        }
        private bool f_afloatSize;
        private int _afloatSize;
        public int AfloatSize
        {
            get
            {
                if (f_afloatSize)
                    return _afloatSize;
                _afloatSize = (int) (Afloat.Count);
                f_afloatSize = true;
                return _afloatSize;
            }
        }
        private bool f_astrSize;
        private int _astrSize;
        public int AstrSize
        {
            get
            {
                if (f_astrSize)
                    return _astrSize;
                _astrSize = (int) (Astr.Count);
                f_astrSize = true;
                return _astrSize;
            }
        }
        private bool f_aintMin;
        private uint _aintMin;
        public uint AintMin
        {
            get
            {
                if (f_aintMin)
                    return _aintMin;
                _aintMin = (uint) (Aint.Min());
                f_aintMin = true;
                return _aintMin;
            }
        }
        private bool f_afloatMin;
        private double _afloatMin;
        public double AfloatMin
        {
            get
            {
                if (f_afloatMin)
                    return _afloatMin;
                _afloatMin = (double) (Afloat.Min());
                f_afloatMin = true;
                return _afloatMin;
            }
        }
        private bool f_aintSize;
        private int _aintSize;
        public int AintSize
        {
            get
            {
                if (f_aintSize)
                    return _aintSize;
                _aintSize = (int) (Aint.Count);
                f_aintSize = true;
                return _aintSize;
            }
        }
        private bool f_aintLast;
        private uint _aintLast;
        public uint AintLast
        {
            get
            {
                if (f_aintLast)
                    return _aintLast;
                _aintLast = (uint) (Aint[Aint.Count - 1]);
                f_aintLast = true;
                return _aintLast;
            }
        }
        private bool f_afloatLast;
        private double _afloatLast;
        public double AfloatLast
        {
            get
            {
                if (f_afloatLast)
                    return _afloatLast;
                _afloatLast = (double) (Afloat[Afloat.Count - 1]);
                f_afloatLast = true;
                return _afloatLast;
            }
        }
        private bool f_astrFirst;
        private string _astrFirst;
        public string AstrFirst
        {
            get
            {
                if (f_astrFirst)
                    return _astrFirst;
                _astrFirst = (string) (Astr[0]);
                f_astrFirst = true;
                return _astrFirst;
            }
        }
        private bool f_astrLast;
        private string _astrLast;
        public string AstrLast
        {
            get
            {
                if (f_astrLast)
                    return _astrLast;
                _astrLast = (string) (Astr[Astr.Count - 1]);
                f_astrLast = true;
                return _astrLast;
            }
        }
        private bool f_aintMax;
        private uint _aintMax;
        public uint AintMax
        {
            get
            {
                if (f_aintMax)
                    return _aintMax;
                _aintMax = (uint) (Aint.Max());
                f_aintMax = true;
                return _aintMax;
            }
        }
        private bool f_afloatFirst;
        private double _afloatFirst;
        public double AfloatFirst
        {
            get
            {
                if (f_afloatFirst)
                    return _afloatFirst;
                _afloatFirst = (double) (Afloat[0]);
                f_afloatFirst = true;
                return _afloatFirst;
            }
        }
        private bool f_astrMin;
        private string _astrMin;
        public string AstrMin
        {
            get
            {
                if (f_astrMin)
                    return _astrMin;
                _astrMin = (string) (Astr.Min());
                f_astrMin = true;
                return _astrMin;
            }
        }
        private bool f_astrMax;
        private string _astrMax;
        public string AstrMax
        {
            get
            {
                if (f_astrMax)
                    return _astrMax;
                _astrMax = (string) (Astr.Max());
                f_astrMax = true;
                return _astrMax;
            }
        }
        private bool f_afloatMax;
        private double _afloatMax;
        public double AfloatMax
        {
            get
            {
                if (f_afloatMax)
                    return _afloatMax;
                _afloatMax = (double) (Afloat.Max());
                f_afloatMax = true;
                return _afloatMax;
            }
        }
        private List<uint> _aint;
        private List<double> _afloat;
        private List<string> _astr;
        private ExprArray m_root;
        private KaitaiStruct m_parent;
        public List<uint> Aint { get { return _aint; } }
        public List<double> Afloat { get { return _afloat; } }
        public List<string> Astr { get { return _astr; } }
        public ExprArray M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
